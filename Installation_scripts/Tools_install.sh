#!/bin/bash

# This script sets up a conda environment for all the tools and installs the tools needed for the project.
# It assumes that conda is already installed and available in the PATH. 

tools=(fastqc multiqc trim-galore kmergenie jellyfish spades velvet seqkit bwa samtools pilon quast busco)

for tool in ${tools[@]}; do

    conda create -n $tool -y
    
    source /root/miniconda3/bin/activate $tool

    echo "Installing ${tool}"

    conda install -y -c bioconda -y -c conda-forge $tool

    echo "${tool} installed successfully"

done
