function pass = move_forward1(pass,prob0)

for i = 80:-1:1
    for j = 20:-1:5
        if pass(i,j) == 1
            if pass(i+1,j) ~= 0
                pass(i,j) = -1;
            elseif prob0 >= rand
                pass(i,j) = 0;
                pass(i+1,j) = 1;
            end
        end
    end
end
                
end
        