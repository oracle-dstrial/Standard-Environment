# devtools must be installed in the Dockerfile before this script is called
library("devtools")

quick_install_check = function(package, version){
  stopifnot(!is.na(version))
  if (!(package %in% installed.packages()[,'Package'])) {
    # install the package from the default repo
    install_version(package, version = version)
    print(paste0('Added '
                 , package
                 , '=='
                 , version))
    # otherwise the package has already been installed
  }  else {
    print(paste0('Already installed '
                 , package
                 , '=='
                 , version))
  }
}

# grab the command line arguments
args <- commandArgs(trailingOnly = TRUE)

# the package to install
package_info = strsplit(args[1]
                       , split = '==')

# check if package is installed and install if not
quick_install_check(package = package_info[[1]][1]
                    , version = package_info[[1]][2])