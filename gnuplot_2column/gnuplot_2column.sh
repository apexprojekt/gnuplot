#!/bin/bash

gnuplot -p << EOS

set title "teszteles"
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#000" behind
set grid xtics ytics lt 0 lw 1 lc 10
set border 3 front lt 4
set key bottom right opaque box outside
set key textcolor lt 10
set xlabel "time" tc lt 4
set ylabel "magnitude" tc lt 4
plot for [col=1:2] 'testing' using 0:col with lines

while (0.1) { replot; pause 1}
EOS
