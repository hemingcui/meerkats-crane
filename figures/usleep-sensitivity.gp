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
set ytics ("0" 0, "50" 50, "75" 75, "100" 100, "125" 125, "150" 150,  "175" 175, "200" 200)
#set line 

#set object 2 rect from 0,900 to 4,1000 fc rgb "white" front fs pattern noborder
#set object 3 rect from -1,0 to -0.997,900 fc rgb "white" front fs pattern
#set object 4 rect from -1,1000 to -0.997,1500 fc rgb "white" front fs pattern
#set label "7.85" at 1.5,1400

#set boxwidth 0.25 absolute
plot 'usleep-sensitivity.dat' \
using 2 t "1" fs pattern 2, '' \
using 3 t "10" fs pattern 2, '' \
using 4 t "100 (default)" fs solid 0.5, '' \
using 5 t "1000" fs pattern 1, '' \
using 6 t "10000" fs pattern 1
