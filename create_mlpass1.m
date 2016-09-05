function pass = create_mlpass1
val = -999;
pass = zeros(80,24);
pass(:,1:4) = val;
pass(end-12:end,5) = val;
pass(:,9) = val;
pass(end-16:end,10) = val;
pass(end-15:end,12) = val;
pass(end-16:end,13) = val;
pass(:,14) = val;
pass(end-35:end,17) = val;
pass(:,18) = val;
pass(end-21:end,20) = val;
pass(:,21:24) = val;
end

