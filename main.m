%{
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
%}

function result = main(t,tspan,prob)
T = (t(2)-t(1))*60*10;
pass = create_mlpass1;
image = pass_image(pass,NaN);
influx = create_influx(t(1),t(2),T);
cars_in_all = 0;
cars_out_all = 0;
rng('shuffle');
for s = 1:T
    [pass,cars_in] = generate_vehicles(pass,influx,s,tspan(1),tspan(2));
    cars_in_all = cars_in_all + cars_in;
    pass = move_forward1(pass,prob(1));
    pass = switch_lane1(pass,prob(2),prob(3),prob(4));
    [pass,cars_out] = move_out(pass);
    cars_out_all = cars_out_all + cars_out;
    image = pass_image(pass,image);
    drawnow
end
result = [cars_in_all,cars_out_all,cars_out_all/cars_in_all];
end



    

    
   

