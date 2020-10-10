#!/bin/bash

gnuplot -p << EOS
set title "mocorgás trackelő" tc rgb"#ffffff"
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#000" behind
set grid xtics ytics lt 0 lw 1 lc 10
set border 3 front lt 10
set key bottom right opaque
set key outside
set key autotitle columnhead
set key textcolor lt 4
set xlabel "t" tc lt 4
set xtics rotate by 90 right
set ylabel "mocorgás" tc lt 4
set xdata time
set timefmt "%d %H:%M:%S"
set format x "%H:%M:%S"

plot "2021" using 1:3 with lines lc 4 lw 1.4
EOS
