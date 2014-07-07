set encoding utf8

set key right bottom
set xlabel "\\popi{t}{hod}" 
set ylabel "\\popi{V}{\\%}" offset 3.0,0 norot
set yrange [0:600]
set xrange [0:25]
set multiplot layout 1,2
set xtics 0,12

set title "Jojo"
plot "problem1-7-data.dat" using 1:2 with lines title "normální", \
     "problem1-7-data.dat" using 1:3 with lines title "slaná", \
     "problem1-7-data.dat" using 1:4 with lines title "sladká", \
     "problem1-7-data.dat" using 1:5 with lines title "studená",\
     "problem1-7-data.dat" using 1:6 with lines title "nasycený r."
     
set title "Haribo"
plot "problem1-7-data.dat" using 1:8 with lines title "normální", \
     "problem1-7-data.dat" using 1:9 with lines title "slaná", \
     "problem1-7-data.dat" using 1:10 with lines title "sladká", \
     "problem1-7-data.dat" using 1:11 with lines title "studená",\
     "problem1-7-data.dat" using 1:12 with lines title "nasycený r."

unset multiplot
set output





