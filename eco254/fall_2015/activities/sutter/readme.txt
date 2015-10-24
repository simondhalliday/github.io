##Data
We begin with the Sutter data from Sutter 2009 in the AER called “AER_20080341_raw data.xls”

##Treatment variable
- Insert column for treatment variable in treatment column insert variable “individual” for individual treatment and corresponding names for the other treatments: teamtreat, paycomm, mixed, etc

##Team variable
- Create a column labeled ‘team’ 
- Cut and paste the values from team treatment to the team column (leave the space open for now) 
- Cut and paste the ‘group assignment’ variables from additional treatments to ‘team’ 
- Insert NAs for the Individual treatment as they were never a part of a team

##Subject variable
- There was no variable “subject” in the “team treat” treatment. 
- I inserted numbers 1 through 28 as I need a variable there to create unique identifiers later. 
- This is different to inserting NAs as we did for Individuals earlier
- Notice, the “better” data format would have been for Sutter to provide the individual level data and simply repeat the individuals for the data to be consistent across formats

##Deleting unnecessary rows
- Delete all rows containing content that is neither a variable nor a case. 
- We delete additional variable names as they aren’t in the first row (which should always be the only row containing variable names)
- In the raw data, the rows to delete are the following: 
 - Rows 1 to 4
 - Rows 66 to 70 
 - Rows 95 to 99
 - Rows 150 to 154
 - Rows 223 to 227
 - Rows 308 to 309 
(notice, above I’ve made the assumption you’ll delete the rows, which will ‘push up’ the rows below, so these numbers above are *not* the same as the original numbers of the rows that would be deleted - the original numbers to delete would be the following) 
 - Rows 1 to 4
 - Rows 70 to 74 
 - Rows 103 to 107
 - Rows 162 to 166
 - Rows 239 to 243
 - Rows 328 to 329 


##Make the file exportable
- Save the file as a .csv. 
- I used the filename SutExp.csv for consistency with our data table naming format. 

You should now have data that is importable into R, Stata or SPSS. 

