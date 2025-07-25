#!/bin/bash

# The script installs conda and all the tools automatically

# Download Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install silently
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Initialize Conda for current shell
$HOME/miniconda3/bin/conda init

# Activate changes
source ~/.bashrc

# Accept ToS for required Anaconda channels
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Initialize Conda
#eval "$(/root/miniconda3/bin/conda shell.bash hook)"

# This script sets up a conda environment for all the tools needed for the project.
# It assumes that conda is already installed and available in the PATH. 

tools=(fastqc multiqc trim-galore kmergenie jellyfish spades velvet seqkit samtools pilon quast busco)

for tool in ${tools[@]}; do

    conda create -n $tool -y
    
    source /root/miniconda3/bin/activate $tool

    echo "Installing ${tool}"

    conda install -y -c bioconda -y -c conda-forge $tool

    echo "${tool} installed successfully"

done

echo checking all tools installed successfully!!!

#!/bin/bash

# Tool -> Command mapping
declare -A tools_cmds=(
  [fastqc]="fastqc"
  [multiqc]="multiqc"
  [trim-galore]="trim_galore"
  [kmergenie]="kmergenie"
  [jellyfish]="jellyfish"
  [spades]="spades.py"
  [velvet]="velveth"
  [seqkit]="seqkit"
  [samtools]="samtools"
  [pilon]="pilon"
  [quast]="quast"
  [busco]="busco"
)

# Activate conda shell
eval "$(conda shell.bash hook)"

for tool in "${!tools_cmds[@]}"; do
  conda activate "$tool" &> /dev/null
  
  if command -v "${tools_cmds[$tool]}" &> /dev/null; then
    echo "✅ $tool"
  else
    echo "❌ $tool"
  fi

  conda deactivate
done
