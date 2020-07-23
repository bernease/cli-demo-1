# WhyLogs CLI Demo - A Library for Statistical Profile Logging

Source code included for DataSketches and WhyLogs.  
Available under Apache License 2.0

### Overview

WhyLogs is an open source package that calculates approximate statistics for very large datasets in order to identify changes in data quality for model inputs and outputs at inference time.  

Approximate statistics allows the package to be deployed with minimal infrastructure requirements, and to work with an entire dataset as opposed to calculating actual statistics on a small sample of data which may miss outliers and other anomalies.  

For Linux/Windows subsystem or Mac OS X users, WhyLogs v0.0.2 can be installed from our precompiled binary. Alternatively, you can install from source. Installation instructions for both methods are included below.

An example project is included in the packages as follows:

    ├── baseline_dataset.csv
    ├── output
    │   └── test-project
    │       └── 1595376294660
    │           ├── protobuf.bin
    │           ├── summmary_histogram.json
    │           ├── summmary_strings.json
    │           ├── summmary_summary.csv
    │           └── whylogs.json
    └── whylogs.yml

### Concepts

**Project:** A collection of related data sets that are used for multiple models or applications.

**Pipeline:** A series of one or multiple datasets to build a single model or application. A project might contain multiple pipelines.

**Dataset:** A collection of records. WhyLogs v0.X supports structured datasets; meaning that the data can be represented as a table where each row is a different record, and each column is a feature of the record. 

**Feature:** In the context of WhyLogs v0.X and structured data, a feature is a column in a dataset. A feature can be discrete (think of gender or eye color) or continuous (think of age or salary). 

**WhyLogs Output:** A profile summary file is returned by WhyLogs on a given dataset in JSON format. For convenience, files for this content are provided in flat table, histogram, and frequency format.

**Statistical Profile:** A collection of statistical properties of a given feature. Properties can be different for discrete and continuous features. 

### WhyLogs JSON

For each baseline or batch dataset provided, WhyLogs returns a profile summary in JSON format. It includes `metadata` about the system and profiling process as well as a `columns` record containing information for each feature profiled.

### Example notebooks

Two example Juypter notebooks are included with WhyLogs. One notebook (Analysis.ipynb) is focused on the content of the profile summaries while the other (Logging.ipynb) is focused on library calls into WhyLogs Python. A generated version of these notebooks are created during `whylogs init` that contain project metadata for a more simple and customized initial experience.

### Project example data

The dataset used in the project example is [Lending Club loan data](https://www.kaggle.com/wordsforthewise/lending-club) from Kaggle. These files contain complete loan data for all loans issued through the years 2007-2015, including the current (as of dataset release in late 2018) loan status (Current, Late, Fully Paid, etc.) and latest payment information.

The file containing loan data through the "present" contains complete loan data for all loans issued through the previous completed calendar quarter. The data set consists of 152 features. 

### Dependencies
Required environment:
- Linux x86-64/Windows subsystem OR Mac OS X
- Python 3.7
- Conda (recommended) or virtualenv
- GCC (if you plan to compile the package from source)
- [DataSketches](https://datasketches.apache.org/) is  a dependency but included in the WhyLogs installation

Precompiled binaries can be found under the `dist` folder. 

## Installation instructions

1. Ensure all dependencies are met
2. Extract the files with: `tar -xzf whylogs.tar.gz`
3. Create a new virtual environment, either with VirtualEnv or Conda (we recommend Miniconda)
4. Ensure that Python 3.7 is used
   1. With Conda use: `conda create --name whylogs python=3.7`
5. Ensure the latest pip version with:
   1. Conda: `conda install pip` 
   2. VirtualEnv: `pip install -U pip`
6. Select destination directory to install WhyLogs:
   1. MacOS users, please use the `MacOSX-x86_64` directory
   2. Linux x86-64/Windows subsystem users, please use the `Linux-x86_64` directory
7. Install WhyLogs with: `pip install datasketches* && pip install whylogs*`
8. You can install these libraries in your notebooks as well but note that *the order of installation is important*
9. To start WhyLogs, run: `whylogs init`
10. Install Jupyter to view the notebooks

### Compiling from source

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
   1. `(your-env) $ pip list | fgrep datasketches` <br> `datasketches       2.0.0b3`
6. Switch to whylogs source code path from datasketches
   1. `(your-env) $ cd ../whylogs`
   2. `(your-env) $ python setup.py build`
   3. `(your-env) $ python setup.py bdist_wheel`
   4. `(your-env) $ pip install dist/*`
7. Verify WhyLogs was installed:
   1. `(your-env) $ pip list  | fgrep whylogs`<br>`whylogs-python     0.0.2b0.dev10`

You can use the wheel artifacts compiled from source specific to your platform above and install them in other environments (equivalent to using our precompiled binaries).
