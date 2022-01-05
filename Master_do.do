* Master file for checking everything done so far

clear all

* Repeating tasks using “for” loops

forvalues i = 1/6 {
     display `i'
	 }
	 
forvalues i = 1/5 {
       display `i'
       display 5 - `i'
   }   
   
   foreach fruit in apple apricot blueberry {
       display "`fruit'"
   }
    
clear all

* Importing .csv file

import delimited "data/raw/flavor2.csv",bindquote(strict)encoding("utf-8") clear

rename v1 Name
rename v2 Age
rename v3 Flavor
rename v4 Gender

recode Gender (2=1) (1=0), gen(genderdummy)
drop if Flavor <=2

label variable Flavor "Ice cream variable"

label define Sex 1 "Female" 2 "Male"
label values Gender Sex

tostring Age, replace
destring Age, replace


clear all

webuse autoexpense
list

webuse autosize, clear
list

merge 1:1 make using "https://www.stata-press.com/data/r14/autoexpense",keep(master match) nogenerate

*Running OLS regression on the same file

reg price mpg length weight

* We see that the weight is significantly correlated to the price of the car that is if the weight is goes up by 1 unit the price will go up by 11.30301 units. 


* Similarily if length goes up by 1 unit the price goes down by 384.4 units as it is negatively correlated 

* Now for saving the regression file we use 

outreg2 using regression_results, replace excel dec(3)

* For using outreg2 we first need to install it by using ssc install outreg2

clear all

* Creating a Pie chart

sysuse nlsw88.dta

graph pie, over(race)
graph pie, over(race) legend(cols(3))
graph pie, over(race) plabel(_all percent) legend(cols(3))
graph pie, over(race) plabel(_all percent) legend(cols(3)) by(married)
graph pie, over(race) plabel(_all percent) by(, title(Pie chart of Race by Maritual Status)) legend(cols(3)) by(married)
graph pie, over(race) pie(_all, explode) plabel(_all percent) by(, title(Pie chart of Race by Maritual Status)) legend(cols(3)) by(married)
	
