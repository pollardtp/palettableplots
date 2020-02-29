set terminal svg enhanced size 800,800 font "Helvetica, 24"
set output 'foo.svg'

set encoding iso_8859_1
set key top left
set xlabel 'n^{-1/3}'
set ylabel 'Energy / kcal mol^{-1}'

set xrange [0.5:1.0]

plot 'summary.txt' u 1:2 w linespoints lt 1 lc rgb "#3852A4" pt 7 ps 1.25 lw 2. t "", \
     'summary.txt' u 1:3 w linespoints lt 1 lc rgb "#7E479C" pt 7 ps 1.25 lw 2. t "", \
     'summary.txt' u 1:4 w linespoints lt 1 lc rgb "#00A99C" pt 7 ps 1.25 lw 2. t "", \
     'summary.txt' u 1:5 w linespoints lt 1 lc rgb "#F37A20" pt 7 ps 1.25 lw 2  t ""
