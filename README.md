# myRenv
This is a project that uses RENV package in R.

# Installing
Install cookiecutter to clone this project more conveniently.

`pip3 install -U cookiecutter`

# Step by step guide to clone from R
1. Create new repository on github and start a new project in R

2. Connect remote and local project:
	- go to build >> configure build tools >> Git/SVN >> Version control system >> Select Git
	- run this command in R terminal: `git remote add origin git@github.com:<user>/<repo>.git`
	- Under Git >> commit >> type message and click commit
	- run this command in R terminal: `git push --set-upstream origin master`

3. Start Cloning - Under R terminal run the following commands:
	  - `cookiecutter https://github.com/madelinelimm/myRenv.git`
	  - include 
	  	- project name: <your_project_name>
	  	- year: <project_year>
	  	- author: <project_author>
	  	- remote: (this is optional)

	  thereafter a folder `<your_project_name>` will be created


4. Activate virtual environment - go to R console:
	- setwd (url that links to your project folder)
	- open `.Rprofile`, at the top right corner of the script, click on 'Source'. This step activates environment, install required packages and set ggplot theme to the entire project. Please install rjson and dplyr packages beforehand to prevent errors.
	- You could also install additional packages with the command `renv::install('<package_name>')` then `renv::snapshot()` to capture the package name and version into the `lockfile`
	
	*Note: Upon completing the above steps, when you leave and re-enter this R project, run the command `source('renv/activate.R')` (found in `.Rprofile`)  to activate your session. Moreover, if you're using a new R project, which do not contain the `renv/library` folder, running the `.Rprofile` will prompt `renv::restore()` to re-install the packages that are in your lockfile and store the packages into `renv/library` folder.
	

5. Run the main file `<your_project_name>.R` script which is linked to the modules located in src, open the `<your_project_name>.R` script, setwd (url that links to src) then click on 'Source' at top right. 

	*Note: If your Rstudio is the latest version, to allow the entire results to be printed, you might have to click on 'Source'>> 'Source as Local job...'>>
	under 'Copy job result' choose 'To global environment' >> 'start' (refer to figure below). Plots will be saved as `Rplots.pdf` file.
	<img width="151" alt="image" src="https://user-images.githubusercontent.com/71245661/150647159-026f5834-3ccb-4692-9a9c-28559daaecec.png">

6. Configure modules to run by changing and adding modules path to `config/modules.json'. Set `execute : true` to run the module and false otherwise.

	
# Additional notes
You might have to `install.packages('renv')` then `library(renv)` to able to use this project. After installing packages into the environment, run the command `renv::snapshot()` in Rconsole to keep track of packages and its version installed.
   
# Author
Madeline Lim Chia Bing (January, 2022)

