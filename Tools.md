# Installation Guidelines

The workshop requires:
1. Terminal
2. Conda
3. Bioinformatics
5. Data
6. Yourself

## 1. Terminal

Access your Google colab terminal [here](https://colab.research.google.com/) for details on how to use it is explained here:[Google colab terminal](https://youtu.be/pvUU3eVPU5U)

Create a notebook and name it `Biogenome_workshop` this will ensure you don't loose you data when you close your session.

## 2. Conda and Bioinformatics Tools Installation

Clone this repository by copying and pasting the command on the terminal you accessed above.

```
git clone https://github.com/Bioinformatics-Training-Materials/East-Africa-BioGenome-Bioinformatics-Practical-Workshop.git
```
Change directory to the repo cloned above

```
cd East-Africa-BioGenome-Bioinformatics-Practical-Workshop
```
## 3. Install conda

Download Miniconda using the command below:

```
bash Installation_scripts/conda_installation.sh
```

Close the terminal using the `ctrl+D` keyboard shortcut and reopen it again. You should see `(base)` at the beginning of your terminal, which was not there initially.

## 4. Install required tools

The command below runs a script that creates the required environments and installs the required tools. Copy and paste the command, relax and watch the magic happen !!! 😂

```
bash Installation_scripts/Tools_install.sh
```
## 5. Validating Installations

Run the script to ensure that all the tools are installed.
```
bash Installation_scripts/installation_check.sh
```
## NOTE

Any tool marked with an x has not been installed and you may need to bring it up during the live sessions.

<img width="275" height="191" alt="image" src="https://github.com/user-attachments/assets/6a9a6f5f-34d7-4f54-b567-384181112eac" />

# ENJOY YOUR TRAINING





