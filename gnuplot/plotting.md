# Working with gnuplot
See data samples at `./data`. We will be working with `./data/count_word.txt`
Open gnu plot `gnuplot`

```gnuplot> !head -3 ./data/count_word.txt
5615    and
4305    the
2745    to
```

## Plotting a Histogram
First we rotate the histogram labels:
`set xtic rotate by -90`

Now let's plot a histogram where the y axis is the count (column 2, and the ticks are column 3):
`plot "./data/count_word.txt" using 0:1:xtic(2)`

the `0` column is a running index, and it is implicit when you use tics, so we can drop it:
`plot "./data/count_word.txt" using 1:xtic(2)`


Cool. Now with a title and all:
```
set title "Word Frequency"
set xlabel "Word"
set ylabel "Frequency"
replot 
```

## Fitting the data
It looks like a 1/sqrt(x) to me
We guess a function and parameters, and plot the data with f(x)
```
f(x)=a + b*(x-x0)**n
a=0;b=3000; n=-0.5;x0=-1
plot "./data/count_word.txt" using 1, f(x)
```

Not a bad guess. Now let's fit it:
I am fitting to x=column(0) because its just an index 
```
fit f(x) "./data/count_word.txt" using 0:1 via a, b, x0, n
```

The values will be printed, and amount of itertions
`plot "./data/count_word.txt" using 1, f(x)`

And a residual:
`plot "./data/count_word.txt" using (f($0)-$1), 0`

