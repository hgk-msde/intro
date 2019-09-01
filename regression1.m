clear all;
close all;
clc;

% Regression example 1


t = (0:0.01:10)'; % row vector, column vector, transpose, (:,1) or (1,:)
y = sin(t * pi/2);
figure(1); cla
plot(t, y)
xlabel('Time (sec)')
ylabel('Measured Quantity')
% whiteNoise = wgn(length(t(:,1)), 1, 1)
% yNoise = y + whiteNoise;
yNoise = awgn(y,10); % Add white Gaussian noise.
figure(2); cla
plot(t, y, 'b', t, yNoise, 'r')