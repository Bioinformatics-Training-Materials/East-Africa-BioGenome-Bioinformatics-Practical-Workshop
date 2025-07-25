# Installtion Guidelines

Access your Google colab terminal as explained here:[Google colab terminal](https://youtu.be/pvUU3eVPU5U)

# Download Miniconda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```
# Install silently
```
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
```
# Initialize Conda for current shell

```
$HOME/miniconda3/bin/conda init
```
# Activate changes
```
source ~/.bashrc
```
If the installation is successful, you should see a list of installed packages with
   ```
   conda list
   ```
If the command cannot be found, you can add Anaconda bin to the path using:
```
export PATH=~/miniconda3/bin:$PATH
```
## Installing tools required for the workshop

Create a separate environment for each tool, activate the environment, and install the tool. These three steps can be combined into a single line of code as shown below.

#### Tools required:

**NOTE** Always consider using the latest stable version
1. FastQC
2. MultiQC
3. Trim Galore/Trimmomatic
4. KmerGenie/Genomescope/Jellyfish
5. SPAdes/Velvet
7. Seqkit
8. Samtools
9. Pilon
10. QUAST
11. BUSCO








