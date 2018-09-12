
# Analysis 1
set datafile separator ","
set title  'Analysis I'
set xlabel 'engine-size'
set ylabel 'price'
plot 'data/imports-85.data' using 17:26 t 'graph 1'


# Analysis 2 
reset
set datafile separator ","
set title  'Analysis II'
set xlabel 'weight'
set ylabel 'price'
plot 'data/imports-85.data' using 14:26 pt 6 # pt 6 is circle
plot [][2500:] 'data/imports-85.data' using 14:26 pt 6 t '' #  price range setting 2000
# t is for legend t '' means no legend
a = 1
b = 1
f(x) = a*x + b
fit f(x) 'data/imports-85.data' using 14:26 via a,b

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
a               = 12.8188          +/- 0.6002       (4.682%)
b               = -19553.6         +/- 1565         (8.003%)

plot [][2500:] 'data/imports-85.data' using 14:26 pt 6 t '', f(x) w l 
