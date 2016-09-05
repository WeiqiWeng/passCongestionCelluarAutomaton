function influx = create_influx(s,e,T)
tspan = linspace(s,e,T);
influx = ceil(my_fourier1(tspan));
end