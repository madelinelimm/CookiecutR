# myRenv
myRenv project is created on R version 4.1.2 (2021-11-01) and RStudio 2021.09.2.

This is a project that uses RENV package in R and runs on a virtual environment. 


# Installing
Install cookiecutter to clone this project more conveniently.

`pip3 install -U cookiecutter`

or

`brew install cookiecutter`

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
	- modules: folder consisting modules, module4.R is a sample code to connect to postgreSQL database
	- lib: folder consisting functions to be used in modules
	- <project_name>.R: main Rscript to be executed
- .Rprofile: automatically executes when project starts
- renv.lock: similar to requirement.txt which stores installed packages names and its versions
- <project name>.Rproj: file that starts the project in R (with Rstudio)
- test: consist folder to test functions



# Step by step guide to clone using R
1. Create new repository on github.

2. Clone the project - Open command prompt with the directory you would like to save the cloned file and run the following commands:
	  - `cookiecutter https://github.com/madelinelimm/myRenv.git`
	  - include 
	  	- project name: <your_project_name>
	  	- year: <project_year>
	  	- author: <project_author>
		- remote: insert ssh or http link to git repo

	  thereafter a folder `<your_project_name>` will be created
	 
3. Open the project - under the `<your_project_name>` folder, open the `<your_project_name>.Rproj`. This brings you to Rstudio.

4. Once you open the Rproject, the `.Rprofile` will be automatically executed, type `y` in Rconsole to allow the packages to be snapshot into the `renv.lock`. This process might take awhile. The `.Rprofile` consist of codes to activate the environment, to install the packages and to set ggplot theme.

5. Connect remote and local project:
	- select build >> configure build tools >> Git/SVN >> Version control system >> Select Git (To initialise this project with Git), this process will restart Rstudio
	- run the `FirstSetup.R` script by clicking on 'Source' at top right. This is linked to the `bin/MakeGit.sh`, and connects Rproject remotely to your git repo.

6. Run the main Rscript with are linked to the modules. Open `<your_project_name>.R` script found in the src folder, then click on 'Source' at top right. 

7. You can decide on modules to run in the main Rscript `<your_project_name>.R`, by changing and adding modules path in `config/modules.json`. Set  `execute : true` in `config/modules.json` to run the module and false otherwise. Note that module4.R is a sample module to connect to postgreSQL database, using the getAllData function from `src/lib/databaseIO/pgIO.R`. You may change your database details in `config/db.template.json` before running the module.

8. You could also create scripts to test the functions created in `src/lib` folder. A sample test script `test/testthat/test_simpleLib.R`, which tests the SimpleTestFunction in `src/lib/testLib/simpleLib.R`, has been created for reference. Click on the 'Run Tests' button at the top right corner to run the test, and the results of the test would be shown (Test complete indicates successful testing).



	
# Additional notes
- You do not have to `install.packages('renv')` in R, as renv is already available in R.
- You could also install additional packages with the command `renv::install('<package_name>')` then `renv::snapshot()` to capture the package name and version into the `renv.lock` file.
- The `.Rprofile` will be automatically executed everytime you enter this Rproject.
- Commit your workings to github using Rstudio's version control, R terminal is typically not required after the initial commit.
   
# Author
Madeline Lim Chia Bing (January, 2022)

