# WhyLogs CLI Demo - A Library for Statistical Profile Logging

Source code included for DataSketches and WhyLogs.  
WhyLogs v0.0.2 available under Apache License 2.0

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

**Dataset:** A collection of records. WhyLogs v0.0.2 supports structured datasets; meaning that the data can be represented as a table where each row is a different record, and each column is a feature of the record. 

**Feature:** In the context of WhyLogs v0.0.2 and structured data, a feature is a column in a dataset. A feature can be discrete (think of gender or eye color) or continuous (think of age or salary). 

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
- Python 3.7 or later

## Getting Started

1. Make sure you have Python 3.7 or 3.8 (`python --version`)
2. Run `pip install -U whylogs`.
   You might have to run `pip3 install -U whylogs` for MacOS X.
3. To start WhyLogs, run: `whylogs init`. Follow the instructions.
4. The CLI comes with a sample dataset of 1000 entries from the Loanding Club dataset above.
5. Start Jupyter to view the notebooks.

For other ways of installing, please see [Installation Instructions](INSTALLATION.md)

