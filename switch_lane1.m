function pass = switch_lane1(pass,prob1,prob2,prob3)

for i = 79:-1:1
    for j = 20:-1:5
        
        if (j == 13 && i >= 59 && i <=63)
            if pass(i,j) == 1 ||  pass(i,j) == -1 
                if pass(i+1,j-1) == 0 && pass(i,j-1) == 0
                   pass(i+1,j-1) = 1;
                   pass(i,j) = 0;
                end
                
            end
        end
        
        if (j == 5 && i >= 63 && i <= 67) || (j == 10 && i >= 59 && i <= 63)
            if pass(i,j) == 1 ||  pass(i,j) == -1
                if prob3 >= rand
                if pass(i+1,j+1) == 0 && pass(i,j+1) == 0
                   pass(i+1,j+1) = 1;
                   pass(i,j) = 0;
                end
                else
                    pass(i,j) = 1;
                end
            end
        end
        
        if (j == 12 && i >= 59 && i <=64) ||  (j == 13 && i >= 54 && i <=58) || (j == 17 && i >= 40 && i <=43) || (j == 20 && i >= 54 && i <=58) 
            if pass(i,j) == 1 ||  pass(i,j) == -1 
                if prob3 >= rand
                if pass(i+1,j-1) == 0 && pass(i,j-1) == 0
                   pass(i+1,j-1) = 1;
                   pass(i+1,j) = 0;
                end
                else
                    pass(i,j) = 1;
                end
            end
        end
        
        
        
       
        
        if pass(i,j) == -1
            if prob1 >= rand
                if rand >= 0.5
                    if pass(i+1,j-1) == 0 && pass(i,j-1) == 0
                       pass(i+1,j-1) = 1;
                       pass(i,j) = 0;
                    elseif pass(i+1,j+1) == 0 && pass(i,j+1) == 0
                    pass(i+1,j+1) = 1;
                    pass(i,j) = 0;
                    else
                    pass(i,j) = 1;
                    end
                else
                    if pass(i+1,j+1) == 0 && pass(i,j+1) == 0
                       pass(i+1,j+1) = 1;
                       pass(i,j) = 0;            
                    elseif pass(i+1,j-1) == 0 && pass(i,j-1) == 0
                    pass(i+1,j-1) = 1;
                    pass(i,j) = 0;
                    else
                    pass(i,j) = 1;
                    end
                end
            else
            pass(i,j) = 1;
            end
        end
            
            if pass(i,j) == 1
                if prob2 >= rand
                  if pass(i+1,j-1) == 0 && pass(i,j-1) == 0
                       pass(i+1,j-1) = 1;
                       pass(i,j) = 0;
                    elseif pass(i+1,j+1) == 0 && pass(i,j+1) == 0
                    pass(i+1,j+1) = 1;
                    pass(i,j) = 0;
                  end
                end
            end
            
    end
end
                
end

            