tic
n = 100000;
u = rand(n,1);
x = linspace(0,0,n+1);
y = linspace(0,0,n+1);
for i=1:1:n
if (u(i)<=0.787473)
T1 = [0.8240740 0.281482; -0.2123460 0.864198]*[x(i);y(i)]+[-1.88229; -0.110607];
x(i+1) = T1(1,:);
y(i+1) = T1(2,:);
elseif(u(i)>0.787473)
T2 = [0.288272 0.720988; -0.463889 -0.377778]*[x(i);y(i)]+[0.785360; 8.095759];
x(i+1) = T2(1,:);
y(i+1) = T2(2,:);
end
end
scatter(x,y,2,'filled');
toc
