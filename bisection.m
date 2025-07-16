% 01 BISECTION
clc
clear all 
close all
f=@(x) x^2-4*x-10;

a=-4;
b=4;
e=.0001;

if f(a)*f(b)<0
    for i=1:100000
    
        c =(a+b)/2;
fprintf(' c=%.4f f(root)=%f \n',c,f(c))        
if abs(c-b)<e || abs(c-a)<e
    break 
end 
        if f(a)*f(c)<0
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end 
     
       
    end 
    
    fprintf(' SO the Approximate Root is %.4f ',c)
else 
    disp(' There is no root in this  intervals ')
    % Plotting the function
x = linspace(a-2, b+2, 400);   % Wider range for better visualization
y = f(x);
plot(x, y, 'b-', 'LineWidth', 2);  % Blue curve for the function
hold on;
grid on;

% Plot the x-axis
yline(0, 'k--');  % x-axis

% Mark the root on the graph
plot(c, f(c), 'ro', 'MarkerSize', 10, 'LineWidth', 2);  % Red dot for root

title('Graph of f(x) = x^2 - 4x - 10 with Approximate Root');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'Root', 'Location', 'best');

end



