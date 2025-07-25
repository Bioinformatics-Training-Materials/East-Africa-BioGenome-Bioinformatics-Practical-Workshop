#!/bin/bash

echo checking all tools installed successfully!!!

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
