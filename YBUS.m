n= input('Enter number of buses :');
A = zeros(n);
for i = 1:1:n
    for j = 1:1:n
        if i~=j
            fprintf('Enter the impedance from bus %d to bus %d = ',i,j);
        else
            fprintf('Enter the impedance from bus %d to ground = ',i);
        end
    A(i,j) = input(' ');    
    end
end
Y = zeros(n);
for i = 1:1:n
    for j = 1:1:n
        if i~=j
            Y(i,j) = -A(i,j);
        else
            Y(i,i) = A(i,i);
            for k = 1:1:n
                if i~=k
           Y(i,i)= Y(i,i)+ A(i,k);
                end
            end
        end 
    end
end
