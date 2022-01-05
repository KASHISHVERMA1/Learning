clear all

webuse autoexpense
list

webuse autosize, clear
list

merge 1:1 make using "https://www.stata-press.com/data/r14/autoexpense",keep(master match) nogenerate
