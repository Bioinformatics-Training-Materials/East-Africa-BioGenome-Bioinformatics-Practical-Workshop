# Installtion Guidelines

Access your Google colab terminal as explained here:[Google colab terminal](https://youtu.be/pvUU3eVPU5U)

 1. [Download Miniconda](https://www.anaconda.com/download/) for Linux
    ```
      wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    ```
    
2. Run:
   ```
   bash Miniconda3-latest-Linux-x86_64.sh
   ```
   
4. Follow all the prompts: if unsure, accept defaults
5. Close and re-open your terminal
6. If the installation is successful, you should see a list of installed packages with
    - `conda list`
If the command cannot be found, you can add Anaconda bin to the path using:
    ` export PATH=~/miniconda3/bin:$PATH`

## Installing tools required for the workshop

Create a separate environment for each tool, activate the environment, and install the tool. These three steps can be combined into a single line of code as shown below.
