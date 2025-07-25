#!/bin/bash

# This script sets up a conda environment for all the tools needed for the project.
# It assumes that conda is already installed and available in the PATH. 

tools=(fastqc multiqc trim-galore kmergenie jellyfish spades velvet seqkit bwa samtools pilon quast busco)

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
  [bwa]="bwa"
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
