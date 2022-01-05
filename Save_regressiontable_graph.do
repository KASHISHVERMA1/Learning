/*Saving Regression table and graph*/

outreg2 using regression_results, replace excel dec(3)
*For using outreg2 we first need to install it


graph save "Graph" "/Users/kash/Documents/final_project/FINAL/data/derived/Pie chart.gph"
