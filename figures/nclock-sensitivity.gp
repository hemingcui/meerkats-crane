set terminal postscript eps enhanced "NimbusSanL-Regu, 24" fontfile "/usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhvr8a.pfb"
#"/usr/share/texmf-texlive/fonts/type1/urw/helvetic/uhvr8a.pfb"
#set terminal  postscript
#set term post eps font "Times New Roman,26"
set border 3

set style data histogram
set style histogram cluster gap 1

set xrange[-0.75:5]
set yrange [0:200]

set xtics nomirror
set ytics nomirror

set ylabel "Crane's normalized performance (%)"
#set xlabel "Applications"

#set xtics rotate by 45 offset -2,-2
set xtics font ",18"
set xtics ("Apache" 0, "ClamAV" 1, "MediaTomb" 2, "Mongoose" 3, "MySQL" 4)
set ytics ("0" 0, "50" 50, "75" 75, "100" 100, "125" 125, "200" 200)
#set line

#set boxwidth 0.25 absolute
plot 'nclock-sensitivity.dat' \
using 2 t "100" fs pattern 2, '' \
using 3 t "1000 (default)" fs solid 0.5, '' \
using 4 t "10000" fs pattern 2
