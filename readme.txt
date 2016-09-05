===============================================================================

project: Cellular Automaton code in MATLAB for 
Study on the Pass Congestion of Shenzhen

author: Weiqi Weng

last update: 10/04/2013 
===============================================================================

start with main.m

input:
t is a vector indicating which time span during the day is CAM simulating
e.g. t = [6, 7] means CAM is going to simulate the situation from 6:00 to 
7:00 in the moring.
tspan is a vector indicating the time span of each two passing vehicles and
buses.
e.g. tspan = [10, 20] means there is a vehicle passing every 60 (tspan(1)*6) 
seconds and a bus coming every 120 (tspan(2)*6) seconds.
prob is a vector indicating 4 subjective factors.
prob(1) is drivers' concentration.
prob(2) is drivers' preference when switching lane: to the left or right.
prob(3) is drivers' inclination to switch lane. 
prob(4) is drivers' choice to switch lane or wait when blocked.

You may try main([6, 7], [10, 20], [0.8, 0.5, 0.5, 0.8])
output:
the number of vehicles in, the number of vehicles out and the ratio.
