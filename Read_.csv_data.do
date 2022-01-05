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
