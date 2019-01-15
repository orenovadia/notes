set xtic rotate by -90
set title "Word Frequency"
set xlabel "Word"
set ylabel "Frequency"
plot "-" using 1:xtic(2)

