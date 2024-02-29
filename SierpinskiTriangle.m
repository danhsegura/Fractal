tic
n = 10000000;
u = rand(n,1);
x = linspace(0,0,n+1);
y = linspace(0,0,n+1);
for i=1:1:n
if (u(i)<=(1/3))
T1 = [0.5 0; 0 0.5]*[x(i);y(i)]+[1;1];
x(i+1) = T1(1,:);
y(i+1) = T1(2,:);
elseif (u(i)>(1/3) && u(i)<=(2/3))
T2 = [0.5 0; 0 0.5]*[x(i);y(i)]+[1;50];
x(i+1) = T2(1,:);
y(i+1) = T2(2,:);
elseif (u(i)>(2/3))
T3=[0.5 0; 0 0.5]*[x(i);y(i)]+[50;50];
x(i+1) = T3(1,:);
y(i+1) = T3(2,:);
end
end
scatter(x,y,2,'filled');
toc
