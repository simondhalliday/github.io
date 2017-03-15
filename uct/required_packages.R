#Title: Script to install packages 
#Author: Simon Halliday
#Date: 2017.03.13
####################
#Run this to install the packages for the R 4 Econ workshop
#People at IT don't know R, so it's easier if we do it. 
#We first check if the package 'pacman' is installed 
#and install it if it is not installed
if(!require("pacman")) install.packages("pacman")
#We now create a list of packages that we want
#Which I have put in an object called 'wantedPackages'
#Feel free to add more packages to this list
wantedPackages <- c("tidyverse", 
                    "plm", 
                    "plotly", 
                    "dygraphs", 
                    "mosaic", 
                    "ggthemes", 
                    "devtools")
#We now use pacman to install the packages we want
pacman::p_load(wantedPackages)
