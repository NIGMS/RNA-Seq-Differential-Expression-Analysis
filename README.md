[comment]: <> (Hi. If you are seeing this message, please open this file with markdown preview or jupyter notebook. You can do this by right clicking on the readme file and picking 'open with'.)
# INBRE Google Cloud Training Tutorials

## <a name="overview">Overview</a>

Included here are several tutorials in the form of 'Jupyter notebooks'.

The purpose of these tutorials is to help users familiarize themselves with the cloud computing in the specific context of running bioinformatics workflows. Here is a link to a YouTube video that gives you an overview of the tutorials: <https://youtu.be/3ie420Luorc>.

These tutorials do this by going step-by-step through specific workflows. These workflows cover the start to finish of basic bioinformatics analysis; starting from downloading raw sequence data, and extending to differential gene expression analysis, and producing common plots in R.

## Table of Contents

<a href="#requirements">Requirements</a></br>
<a href="#getting-started">Getting Started</a></br>
<a href="#workflow">Workflows</a></br>
<a href="#data">Data</a></br>
<a href="#funding">Funding</a></br>
</br>

## <a name="requirements">Requirements</a>

These tutorials were designed to be used on cloud computing platforms, with the aim of requiring nothing but the files within this GitHub repository.

With this in mind, our tutorials use Jupyter Notebook files, which Google Cloud Platform, Amazon Web Service, and Microsoft Azure all provide support for. Therefore, requirements should only require creation of a virtual machine on one of these providers, and the downloading of this github's files to that machine.

For more information on creating a virtual machine and downloading our GitHub repo to that machine, we have a getting started section below. Currently this section only includes information on how to do this using Google Cloud Platform.

## <a name="getting-started">Getting Started</a>

This repository contains several notebook files which serve as bioinformatics workflow tutorials.

The below steps guide you through setting up a virtual machine on Google Cloud Platform, downloading our tutorial files, and running those files. 

Accordingly, before starting, make sure you have a google account and have access to a Google Cloud Platform Project.

Once you have these, you can begin by first navigating to https://console.cloud.google.com/ and logging in with your credentials. Then, in the top left of the screen, navigate to 'select a project', and choose the project you belong to.

This tutorial will cost you just less than $3.00 assuming a n1-standard-8 machine, and assuming you delete the virtual machine and the storage bucket after you finish the tutorial. You can save some time by using an n2 machine, but it will cost a little bit more (thought not that much). 

### Navigating to the Vertex AI Workbench

Once a project has been selected, we can navigate to the Vertex AI Workbench, this is where we can make our virtual machine. 
To get there, select the navigation menu, and navigate to 'Vertex AI' under the Artificial Intelligence section. 
Within the Vertex AI submenu, select 'Workbench'.

![RNA-Seq workflow](images/navigatecircle.png)


### Creating a Virtual Machine

Within the Workbench screen, Select the option to create a 'New Notebook'.

Our notebooks include a notebook that uses R code, so check the 'R' framework. This will include Python as well as R compatibility. You can then choose a name for your virutal machine, you can name it whatever you like, and preferably choose a server location closest to you. Ignore the advanced options for now, and a default virtual machine will be created. A default machine has 4 vCPUS and 15GB RAM.

Creating a machine may take a few minutes to finish.

![RNA-Seq workflow](images/newnotebook2.png)

### Starting Your Virtual Machine

To start your virtual machine by clicking 'Open Jupyerlab'. You will know it is running because of the green checkmark.

Note, when you are finished running code, you should turn off your virtual machine to prevent unneeded billing or resource use by checking your notebook and pushing the 'Stop' button. 

![RNA-Seq workflow](images/startingmachine.png)

### Downloading Tutorial Files

Now that you have created your virtual machine, and are in the Jupyterlab screen, you can run our tutorial files. But first you will need to download them.
The easiest way to do this would probably be to clone our repository directly. This can be done by using the 'Git' menu in Jupyterlab, and selecting the clone option. 
Next you can type in the link of repository: "https://github.com/King-Laboratory/rnaseq-myco-notebook.git" (without quotation marks) and click 'Clone'. 

This should download our repo, and the tutorial files inside, into a folder called 'rnaseq-myco-notebook'. Double click this folder now. Inside you will find all our tutorial files, which you can double click and run.

![RNA-Seq workflow](images/git.png)

### Running Tutorial Files

All our tutorial workflows are are Jupyter format. To run them you need only to double click the tutorial file you want.

This will open the Jupyter file in Jupyter notebook. From here you can run each section, or 'cell', of the code, one by one, by pushing the 'Play' button on the above menu. 

Some 'cells' of code take longer for the computer to process than others. You will know a cell is running when a cell has an asterisk next to it \[\*\]. When the cell finishes running, that asterisk will be replaced with a number which represents the order that cell was run in.

You can now explore the tutorials by running the code in each, from top to bottom. Look at the 'workflows' section below for a short description of each tutorial.

Jupyter is a powerful tool, with many useful features. For more information on how to use Jupyter, we recommend searching for Jupyter tutorials and literature online.


![RNA-Seq workflow](images/runnotebook.png)

### Stopping Your Virtual Machine

When you are finished running code, you can turn off your virtual machine to prevent unneeded billing or resource use by checking your notebook and pushing the 'Stop' button.

## <a name="workflow">Workflows</a>

Our tutorials are broken down into 'workflows'. Each notebook file covers a specific workflow, which contains written and visual commentary, as well as the actual step-by-step code for running that workflow analysis. 

These notebooks were designed to be run using a virtual machine on a cloud computing provider. For more information on how to do this; navigate to the <a href="#getting-started">'Getting Started'</a> section. Feel free to explore and run the workflows in any order you like. 


![RNA-Seq workflow](images/RNA-Seq_Notebook_Homepage.png)


<strong><a href="Tutorial_1.ipynb">Workflow One</a>:</strong> A short introduction to downloading and mapping sequences to a transcriptome using Trimmomatic and Salmon. Here is a link to the YouTube video demonstrating the tutorial: <https://youtu.be/ChGfBR4do_Y>.

<strong><a href="Tutorial_1B_Extended.ipynb">Extended Workflow One (Extended)</a>:</strong> An extended version of workflow one. Once you have got your feet wet, you can retry workflow one with this extended version that covers the entire dataset, and includes elaboration such as using SRA tools for sequence downloading, and examples of running batches of fastq files through the pipeline. This workflow may take around an hour to run.


<strong><a href="Tutorial_2_Snakemake.ipynb">Workflow One (Using Snakemake)</a>:</strong> Using snakemake to run workflow one.

<strong><a href="Tutorial_3_DEG_Analysis.ipynb">Workflow Two (DEG Analysis)</a>:</strong> Using Deseq2 and R to conduct clustering and differential gene expression analysis.


## <a name="data">Data</a>

These tutorials use example sequence data procured from the Sally Molloy labratory here at University of Maine; which investigates the transcriptome change in prophage infected, versus non-prophage infected <I>M. chelonae</I> bacteria. The respective article can be found <a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8191103/">here</a>.

## <a name="forum">Support Forum Thanks</a>

Support forum thanks. For almost any programming project, contributions to online databases and support forums are an invaluable resource that are heavily leaned upon. Thank goodness for those people who take the time to answer silly questions.

## <a name="funding">Funding</a>

Funded by the Maine INBRE Program (NIH/NIGMS P20 GM103423).
