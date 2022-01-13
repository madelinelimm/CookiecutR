# myRenv
This is a project that uses RENV package in R.

# Installing
Install cookiecutter to clone this project more conveniently.

`pip3 install -U cookiecutter`

# Step by step guide to clone from R
1. Create new repository on github and start a new project in R, connecting it remotely to your github repository

2. Under R terminal run the following commands:
	  - `cookiecutter https://github.com/madelinelimm/myRenv.git`
	  - include 
	  	- project name: <your_project_name>
	  	- year: <project_year>
	  	- author: <project_author>
	  	- remote: (this is optional)

	  thereafter a folder `<your_project_name>` is created


4. To activate virtual environment, go to R console:
	- setwd (url that links to your project folder)
	- open `.Rprofile` and run the line of command
	- Rconsole will prompt -> `renv::restore()` then `y`, this command will allow the required packages and version in `renv.lock` to be installed
	- (optional) go to `bin/vEnv.R`, click on "Source" at top right, to run all the suggested packages, you may use `renv::install('<package_name>')` to install other packages required in your project
	

5. To run the main file `<your_project_name>.R` script which is linked to the modules located in src,
   open the `<your_project_name>.R` script, setwd (url that links to src) then click on 'Source' at top right

	
# Additional notes
You might have to `install.packages('renv')` then `library(renv)` to able to use this project. After installing packages into the environment, run the command `renv::snapshot()` in Rconsole to keep track of packages and its version installed.
   
# Author
Madeline Lim Chia Bing (January, 2022)

