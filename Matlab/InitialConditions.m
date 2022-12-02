close all;
clear all;
% Changing intitial conditions and checking the resulting behavior
x0 = [0.2: 0.001 :0.21]; % intial conditon
r = 2.5;
n = 200;
n_vec = [0:1:n];


% Part a.)     X_n vs. n
 m = 0;
figure()
hold on
for i = 1:length(x0)
    [xn{i}] = logistic(n,m,r,x0(i)); % Logistics Map (0,1) -> (0,1)
    plot(n_vec,xn{i},'*');
    hold on
    title(' X_n vs. n')
    xlabel('n');
    ylabel('X_n');
end
hold off


% Part b.)     X_(n+1) vs. X_n
m = 1;
figure
hold on
for i = 1:length(x0)
    [x_n1{i}] = logistic(n,m,r,x0(i));
    plot(xn{i},x_n1{i},'*');
    hold on
    title('X_{n+1} vs. X_n') 
    xlabel('X_n');
    ylabel('X_{n+1}');
end
hold off

% Part c.)     X_(n+2) vs. n
m = 2;
figure()
hold on
for i = 1:length(x0)
    [x_n2{i}] = logistic(n,m,r,x0(i)); 
    plot(xn{i},x_n2{i},'*');
    title('X_{n+2} vs. X_n') 
    xlabel('X_n');
    ylabel('X_{n+2}');
end
hold off
