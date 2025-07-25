#!/bin/bash

# The script installs conda and all the tools automatically

# Download Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install silently
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Initialize Conda for current shell
$HOME/miniconda3/bin/conda init

# Accept ToS for required Anaconda channels
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Activate changes
source ~/.bashrc
 
