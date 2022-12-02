%% Author: Jack Lambert
% HW 1
%% House Keeping 
close all;
clear all;
%% Question 3
x0 = 0.2; % Initial Condition
r =  4.1; % Ratio of foxes to rabbits (0, 1)
n = 10; % Number of iterates or time steps

% Part a.)     X_n vs. n
m = 0;
[xn] = logistic(n,m,r,x0); % Logistics Map (0,1) -> (0,1)
figure()
plot([0:1:n],xn,'*');
title(' X_n vs. n')
xlabel('n');
ylabel('X_n');

% Part b.)     X_(n+1) vs. X_n
m = 1;
[x_n1] = logistic(n,m,r,x0); 

figure()
plot(xn,x_n1,'*');
title('X_{n+1} vs. X_n') 
xlabel('X_n');
ylabel('X_{n+1}');

% Part c.)     X_(n+2) vs. n

m = 2;
[x_n2] = logistic(n,m,r,x0); 

figure()
plot(xn,x_n2,'*');
title('X_{n+2} vs. X_n') 
xlabel('X_n');
ylabel('X_{n+2}');

%% Question 4
% Changing intitial conditions and checking the resulting behavior

x0 = 0.2; % Restatingi intial conditon
x0_1 = 0.4; % Slightly different intial condition
r = 2.5;
n = 50;
n_vec = [0:1:n];
% Running function for the logistic map
m = 0;
[x1] = logistic(n,m,r,x0); % for initial condition 1
[x2] = logistic(n,m,r,x0_1); % for initial condition 2


% difference plots
diff = abs(x1 - x2); % difference in state between initial cases
avg = mean(diff)
figure()
plot(n_vec,diff,'*');
title('$ |X_n - \hat{X_n}| \,\ vs. \,\ n $','Interpreter','latex')
xlabel('n');
ylabel('$|X_n - \hat{X_n}| $','Interpreter','latex');
% axis([0 n 0 1])





