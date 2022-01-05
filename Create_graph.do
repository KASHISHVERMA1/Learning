clear all

* Creating a Pie chart

sysuse nlsw88.dta

graph pie, over(race)
graph pie, over(race) legend(cols(3))
graph pie, over(race) plabel(_all percent) legend(cols(3))
graph pie, over(race) plabel(_all percent) legend(cols(3)) by(married)
graph pie, over(race) plabel(_all percent) by(, title(Pie chart of Race by Maritual Status)) legend(cols(3)) by(married)
graph pie, over(race) pie(_all, explode) plabel(_all percent) by(, title(Pie chart of Race by Maritual Status)) legend(cols(3)) by(married)

graph save "Graph" "/Users/kash/Documents/final_project/FINAL/data/derived/Pie chart.gph"
