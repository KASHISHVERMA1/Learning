clear all

*repeating tasks using “for” loops

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
   
