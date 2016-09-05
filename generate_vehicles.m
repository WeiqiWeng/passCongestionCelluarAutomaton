function [pass,cars_in] = generate_vehicles(pass,influx,i,tspan1,tspan2)

if influx(i) > 0
    post = find( pass(1,:) == 0 );
    n = length(post);
    x = randperm(n);
    pass(1, post(x(1:min(influx(i),n))) ) = 1;
end

pass(1,19:20)=0;

 if mod(i,tspan1) == 0
    post = round(19+rand);
 if pass(1,post) == 0
    pass(1,post) = 1;
 end
 end


 if mod(i,tspan2) == 0
    post = round(19+rand);
 if pass(1,post) == 0
    pass(1,post) = 1;
 end
 end
 cars_in = sum(pass(1,:) == 1);
 end
    