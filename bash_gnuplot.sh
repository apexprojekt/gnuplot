#!/bin/bash
echo data input: 
read data

gnuplot -p << EOS

set title "szeizmikus aktivitas"
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#000" behind
set grid xtics ytics lt 0 lw 1 lc 10
set border 3 front lt 4
set key bottom right opaque box outside
set key textcolor lt 10
set xlabel "time" tc lt 4
set ylabel "magnitude" tc lt 4

#plot "$data" with dots lt 3 lw 1.8
plot "$data" with lines lt 3 lw 1

EOS

