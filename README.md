# myRenv
This is a project that uses RENV package in R.

# Installing
Install cookiecutter to clone this project more conveniently.

`pip3 install -U cookiecutter`

# Introducing Structure of this project
- bin
	- vEnv.R: consist R packages to be installed
	- theme_myRENV.R: sets the ggplot theme in the project
- config
	- modules.json: consist modules path and decides on whether to execute a module
- data 
- renv: consist folders which stores project packages in the environment
- results: consist of Rplots
- src
	- modules: folder consisting modules
	- <project_name>.R: main Rscript to be executed
- renv.lock: similar to requirement.txt which stores installed packages names and its versions



# Step by step guide to clone using R
1. Create new repository on github.

2. Clone the project - Open command prompt with the directory you would like to save the cloned file and run the following commands:
	  - `cookiecutter https://github.com/madelinelimm/myRenv.git`
	  - include 
	  	- project name: <your_project_name>
	  	- year: <project_year>
	  	- author: <project_author>
	  	- remote: (this is optional)

	  thereafter a folder `<your_project_name>` will be created
	 
3. Open the project - under the `<your_project_name>` folder, open the `<your_project_name>.Rproj`. This brings you to Rstudio.

4. Once you open the Rproject, the `.Rprofile` will be automatically executed. This process might take awhile. The `.Rprofile` consist of codes to activate the environment, to install the packages and to set ggplot theme.

5. Connect remote and local project:
	- go to build >> configure build tools >> Git/SVN >> Version control system >> Select Git (To initialise this project with Git)
	- run this command in R terminal: `git remote add origin git@github.com:<user>/<repo>.git`
	- Under Git >> commit >> type any message and click commit
	- run this command in R terminal: `git push --set-upstream origin master`

6. Run the main Rscript with are linked to the modules. Open `<your_project_name>.R` script found in the src folder, then click on 'Source' at top right. 

7. You can decide on modules to run in the main Rscript `<your_project_name>.R`, by changing and adding modules path in`config/modules.json`. Set  `execute : true` to run the module and false otherwise.



	
# Additional notes
- You might have to `install.packages('renv')` then `library(renv)` to able to use this project.
- You could also install additional packages with the command `renv::install('<package_name>')` then `renv::snapshot()` to capture the package name and version into the `renv.lock` file.
- The `.Rprofile` will be automatically executed everytime you enter this Rproject.
- Commit your workings to github using Rstudio's version control, R terminal is typically not required after the initial commit.
   
# Author
Madeline Lim Chia Bing (January, 2022)

