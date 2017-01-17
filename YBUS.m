n= input('Enter number of buses :');
A = zeros(n);
[i,j]=meshgrid(1:10,1:10);
        if i~=j
            fprintf('Enter the impedance from bus %d to bus %d = ',i,j);
        else
            fprintf('Enter the impedance from bus %d to ground = ',i);
        end
    A(i,j) = input(' ');    

Y = zeros(n);
Y = -A
for i = 1:1:n
    Y(i,i)=  sum(A(i,:));
end
