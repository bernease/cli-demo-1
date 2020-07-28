# INSTALLATION INSTRUCTIONS 

### Requirements
Required environment:
- Linux x86-64/Windows subsystem OR Mac OS X
- Recommended: Python 3.7
- Conda (recommended), pyenv, or virtualenv
- GCC (if you plan to compile the package from source)

### Building from source

If you would prefer not to use the precompiled binaries, you can compile from source by following these steps:
1. Set up a Python 3.7 conda/virtualenv environment. Activate the environment before proceeding.
2. Make sure you have an up-to-date gcc
   1. `(your-env) $ gcc --version `
3. Clone the package:
   1. `(your-env) $ git clone https://github.com/whylabs/cli-demo-1.git`
4. From the root of the `cli-demo-1` package, install DataSketches in your environment:
   1. `(your-env) $ cd src/datasketches`
   2. `(your-env) $ python setup.py build`
   3. `(your-env) $ python setup.py bdist_wheel`
   4. `(your-env) $ pip install dist/*`
5. Verify datasketches was installed:
   1. `(your-env) $ pip list | fgrep datasketches` <br> `datasketches       2.0.0b6`
6. Switch to whylogs source code path from datasketches
   1. `(your-env) $ cd ../whylogs`
   2. `(your-env) $ python setup.py build`
   3. `(your-env) $ python setup.py bdist_wheel`
   4. `(your-env) $ pip install dist/*`
7. Verify WhyLogs was installed:
   1. `(your-env) $ pip list  | fgrep whylogs`<br>`whylogs-python     0.0.2b2`

