*Running OLS regression on the same file

reg price mpg length weight

* We see that the weight is significantly correlated to the price of the car that is if the weight is goes up by 1 unit the price will go up by 11.30301 units. 


* Similarily if length goes up by 1 unit the price goes down by 384.4 units as it is negatively correlated 

outreg2 using regression_results, replace excel dec(3)
*For using outreg2 we first need to install it by using ssc install outreg2
