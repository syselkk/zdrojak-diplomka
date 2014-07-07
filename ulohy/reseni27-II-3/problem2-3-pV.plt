set parametric
set grid
set nokey
f(x)= exp(-1.4*log(x))
g(x)= x<exp(-2*log(2)/7) ? exp(-1.4*log(x)-0.4*log(2)) : 1
set label '$\bod{1}=\bod{5}$' at 1.01,0.85
set label '$\bod{2}$' at 0.47,2.7
set label '$\bod{3}$' at 0.47,1.9
set label '$\bod{4}$' at 0.82,0.85
set xrange [0:1.2]
set yrange [0:3]
set xlabel '$\dfrac{V}{V_1}$'
set ylabel '$\dfrac{p}{p_1}$' norot offset 3
set arrow from 0.5,2 to 0.5,exp(1.4*log(2)) nohead ls -1 lw 2
set trange [0.5:1]
plot t, f(t) ls -1 lw 2, t, g(t) ls -1 lw 2
