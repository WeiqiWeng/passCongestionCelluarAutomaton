function [pass,cars_out] = move_out(pass)
cars_out = sum(pass(end,:) == 1);
pass(end,pass(end,:)==1)=0;
end