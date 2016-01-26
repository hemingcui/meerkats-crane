set terminal postscript eps enhanced "NimbusSanL-Regu, 24" fontfile "/usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhvr8a.pfb"
#set terminal  postscript
#set term post eps font "Times New Roman,26"
set border 3

set style data histogram
set style histogram cluster gap 1

set xrange[-1:2]
set yrange [0:950]

set xtics nomirror
set ytics nomirror

set ylabel "Crane's normalized performance (%)"
#set xlabel "Applications"

#set xtics rotate by 45 offset -2,-2
set xtics ("Apache" 0, "Mongoose" 1)
set ytics ("100" 100, "500" 500, "700" 700)

#set boxwidth 0.25 absolute
plot 'opt-hint.dat' using 2 t "Crane w/o hint" fs pattern 2, '' using 3 t "Crane w/ hint" fs solid 0.5
