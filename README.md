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

	  thereafter a folder `<your_project_name>` will be created


4. To activate virtual environment, go to R console:
	- setwd (url that links to your project folder)
	- open `.Rprofile` and run the line of command
	- go to `bin/vEnv.R`, click on 'Source'at top right, to run all the suggested packages. You could also add in packages or use the command `renv::install('<package_name>')` to install other packages required in your project

	*Note: Upon completing the above steps, when you leave and re-enter this R project, run the `.Rprofile` again to activate your session. Moreover, if you're
	using a new R project, which do not contain the `renv/library` folder, running the `.Rprofile` will prompt `renv::restore()` to re-install the packages that 
	are in your lockfile and store the packages into `renv/library` folder.
	

5. To run the main file `<your_project_name>.R` script which is linked to the modules located in src, open the `<your_project_name>.R` script, setwd (url that links to src) then click on 'Source' at top right. 

(If your Rstudio is the latest version, to aloow the entire results to be printed, you might have to click on 'Source'>> 'Source as Local job...'>> under 'Copy job result' choose 'To global environment' >> 'start')

	
# Additional notes
You might have to `install.packages('renv')` then `library(renv)` to able to use this project. After installing packages into the environment, run the command `renv::snapshot()` in Rconsole to keep track of packages and its version installed.
   
# Author
Madeline Lim Chia Bing (January, 2022)

