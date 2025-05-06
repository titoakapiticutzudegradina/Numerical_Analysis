%Problem 1
t = [0,3,5,8,13];
d = [0,255,383,623,993];
s = [75,77,80,74,72];

%pchip -> piecewise cubic hermit interp
dist_est = interp1(t,d,10,'pchip');
speed_est = interp1(t,s,10,'pchip');

display(['Estimated position at t = 10: ', num2str(dist_est)]);
display(['Estimated speed at t = 10: ', num2str(speed_est)]);