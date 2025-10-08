# How to update R
# Find the Repository that is actually maintained
# wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

# tidyverse cannot be install via R itself. For that use the following
# sudo apt-get build-dep r-cran-foo
# apt install --no-install-recommends r-cran-tidyverse

# sudo apt-get install libpq-dev # for RpostgresSQL

# install the pseudo-package from this Github repository
# example 1: bulk-install all light themes
# install_rstudio_themes(theme = "all_light")
# example 2: install two specific light themes
# install_rstudio_themes(theme = c("Ayu Light", "Github {rsthemes}"))
# require(rstudiothemes) # ... then load the library

preheat_packages = c(
  "devtools", # package manager
  "remotes", # package manager
  "renv" # package manager
)

devtools::install_github("dustinfife/flexplot")

packages = c(
  "RPostgres", # postgresql
  "RSQLite", # sqlite
  "DBI", # database interface
  "RH2", # database interface
  "sqldf", # sql-dataframe interface
  "rngSetSeed", # random number generator
  "Lubridate", # date and time
  "RColorBrewer", # color
  "purrr", # functional programming
  "tidyr", # data analysis
  "dplyr", # data analysis
  "dslabs", # data analysis
  "tidyverse", # data analysis
  "CARRot", # data analysis
  "randomForest", # machine learning
  "mlr3", # machine learning
  "ROCR", # machine learning
  "caret", # machine learning
  "Glmnet", # machine learning
  "ggplot2", # data visualization
  "knitr", # markdown
  "Rmarkdown", # markdown
  "MASS",
  "dotenv"
)

install.packages("devtools")


failed_package_managers = c()
for (package in preheat_packages) {
  tryCatch(
    {
      if(!require(package)) install.packages(package)
    }, error = function(e) {
      failed_package_managers = c(failed_package_managers, package)
    }
  )
}

# Connect to addition repositories
devtools::install_github("max-alletsee/rstudio-themes")
remotes::install_github("r-dbi/RPostgres")

failed_to_install = c()
for (package in packages) {
  tryCatch(
    {
      if(!require(package)) install.packages(package)
    }, error = function(e) {
      failed_to_install = c(failed_to_install, package)
    }
)
}
