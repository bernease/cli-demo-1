# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# Modified from:
# http://www.benjack.io/2018/02/02/python-cpp-revisited.html

import os
import sys
import platform
import subprocess

import codecs
import os.path

from setuptools import setup, find_packages, Extension
from setuptools.command.build_ext import build_ext


def read(rel_path):
    here = os.path.abspath(os.path.dirname(__file__))
    with codecs.open(os.path.join(here, rel_path), 'r') as fp:
        return fp.read()


def get_version(rel_path):
    for line in read(rel_path).splitlines():
        if line.startswith('__version__'):
            delimiter = '"' if '"' in line else "'"
            v = line.split(delimiter)[1]
            print('WhyLogs version:', v)
            return v
    else:
        raise RuntimeError("Unable to find version string.")


version = get_version("python/src/_version.py")

class CMakeExtension(Extension):
    def __init__(self, name, sourcedir=''):
        Extension.__init__(self, name, sources=[])
        self.sourcedir = os.path.abspath(sourcedir)

class CMakeBuild(build_ext):
    def run(self):
        try:
            subprocess.check_output(['cmake', '--version'])
        except OSError:
            raise RuntimeError(
                "CMake >= 3.12 must be installed to build the following extensions: " +
                ", ".join(e.name for e in self.extensions))

        # if platform.system() == "Windows":
        #     cmake_version = LooseVersion(re.search(r'version\s*([\d.]+)',
        #                                            out.decode()).group(1))
        #     if cmake_version < '3.12.0':
        #         raise RuntimeError("Cmake >= 3.12.0 is required")

        for ext in self.extensions:
            self.build_extension(ext)

    def build_extension(self, ext):
        extdir = os.path.abspath(
            os.path.dirname(self.get_ext_fullpath(ext.name)))
        cmake_args =  ['-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=' + extdir]
        cmake_args += ['-DWITH_PYTHON=True']
        # Require to enable Pybind11 to pick up the correct Python paths
        cmake_args += ['-DPYTHON_EXECUTABLE=' + sys.executable]
        cfg = 'Debug' if self.debug else 'Release'
        build_args = ['--config', cfg]

        if platform.system() == "Windows":
            cmake_args += ['-DCMAKE_LIBRARY_OUTPUT_DIRECTORY_{}={}'.format(
                           cfg.upper(),
                           extdir)]
            if sys.maxsize > 2**32:
                cmake_args += ['-A', 'x64']
                build_args += ['--', '/m']
        else:
            cmake_args += ['-DCMAKE_BUILD_TYPE=' + cfg]
            build_args += ['--', '-j2']

        env = os.environ.copy()
        env['CXXFLAGS'] = '{} -DVERSION_INFO=\\"{}\\"'.format(
            env.get('CXXFLAGS', ''),
            self.distribution.get_version())
        if not os.path.exists(self.build_temp):
            os.makedirs(self.build_temp)
        subprocess.check_call(['cmake', ext.sourcedir] + cmake_args,
                              cwd=self.build_temp, env=env)
        subprocess.check_call(['cmake', '--build', '.', '--target', 'python'] + build_args,
                              cwd=self.build_temp)
        print() # add an empty line to pretty print

setup(
    name='whylabs-datasketches',
    #use_scm_version=True,
    version=version,
    author='Datasketches Developers',
    author_email='dev@datasketches.apache.org',
    description='A wrapper for the C++ Datasketches library',
    license='Apache License 2.0',
    url='http://datasketches.apache.org',
    long_description=open('python/README.md').read(),
    packages=find_packages('python'), # python pacakges only in this dir
    package_dir={'':'python'},
    # may need to add all source paths for sdist packages w/o MANIFEST.in
    ext_modules=[CMakeExtension('whylabs-datasketches')],
    cmdclass={'build_ext': CMakeBuild},
    setup_requires=['setuptools_scm','tox-setuptools'],
    python_requires='>=3.5',
    zip_safe=False
)
