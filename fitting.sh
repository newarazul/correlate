#!/bin/bash
#fitting data curve to results
#giving out png file 
#giving out fitting log





#for i in 0 1 2 3 
#do
#set output "Correlation"
#set terminal png
#set title "Reorientation dynamics of OH groups"
#set xlabel "tau,ps"
#set ylabel 'P2(tau)'
#x1="fred.dat" using $2
#f(x)= "fred.dat" using 1:((($2+$3)/2)*(($4+$5)/2)*-1000) 
#fit f(x) "times.dat" using 1:((a*($2+$3)/2)*(b*($4+$5)/2)*-1000) via a, b 

#plot f(x)
#set xrange [0:8]

s<F5>et table "correlate.dat"
plot "fred.dat" using 1:((($2+$3)/2)*(($4+$5)/2)*-1000)  
unset table

set table "timesgraph.dat"
#plot "Results-H2O-L1.dat" lc rgb 'black' title "H20-L1" with lines,f(x) lc rgb 'red' title "fit:H2O-L1"

pause -1 "Hit any key"
