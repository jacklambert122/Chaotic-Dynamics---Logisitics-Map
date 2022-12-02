
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Jack Lambert
% HW 1
% Purpose: logictics map function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [output] = logistic(n,m,R,x_0)
output = [];
x = x_0;
for i = 0:n+m+1
    x = R*x*(1-x);
    output = [output,x];
end
output = output(m+1:n+m+1);