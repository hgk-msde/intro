clear all;
close all;
clc;

% regression example 2

t = 0:1:10;
oriY = 0:1:10;
meaY = oriY + awgn(oriY,10).*sin(t*pi/2); % Add white Gaussian noise
figure(3); cla
plot(t, oriY, 'b*', t, meaY, 'ro')
grid on
xlabel('Time (sec)')
ylabel('Signal (Unit)')
legend('True Signal', 'Measured Signal') 
