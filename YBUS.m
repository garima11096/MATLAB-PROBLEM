function ybus = ybusppg();  

linedata = linedata6(); 
fb = linedata(:,1);     
tb = linedata(:,2);     
r = linedata(:,3);      
x = linedata(:,4);      
b = linedata(:,5);      
z = r + i*x;          
y = 1./z;

n = max(max(fb),max(tb));   
ybus = zeros(n,n); 

ybus= -y; 
for j = 1:1:n
    ybus(j,j)=  sum(y(j,:))
end
