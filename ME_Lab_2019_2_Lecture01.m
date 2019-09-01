function ME_Lab_2019_2_Lecture01()

%% Useful shortcuts
% F1, F5, Ctrl + 'R', Ctrl + 'T'

%% Useful commands
% clc, clear, help, who, dir, cd, date, path, save, load, edit
clear all
close all
clc

%% Data types
% integer (signed, unsigned)  => http://kr.mathworks.com/help/matlab/matlab_prog/integers.html
% single, double
% logical
% char/string 
%    [Practice]   left, mid, right
% cell
% structure

% isnumeric, ischar

%% Type conversion
% help num2str

% help format
format short        % Matlab by default displays only 4 decimals

x = 123.45678901234567

format long
x = 123.45678901234567


%% Workspace, local & global variable
a = 0.00123;
b = 2;
c = a+b;

%% Initialization
matA = zeros(10,1);
for i = 1:10
    matA(i) = i * 10;
end

matB = [];
for i = 1:10
    matB = [matB, i]
%     matB = [matB; i]
end

%% Functions
%  - input, output arguments


%% Basic grammar
%  - for, end

%  - if, elseif, else, end

%  - while, end, break

%  - switch, case, otherwise, end
%         mynumber = input('Enter a number:');
% 
%         switch mynumber
%             case -1
%                 disp('negative one');
%             case 0
%                 disp('zero');
%             case 1
%                 disp('positive one');
%             otherwise
%                 disp('other value');
%         end


%% Debugging
% F9, F10, F11, F12

%% Visualization
% - plot
% - export figures
% - curve fitting tool (1st diff, 2nd diff, evaluated values?)

t = (0:0.01:10)';       % row vector, column vector, transpose, (:,1) or (1,:)
y = sin(t * pi/2);
figure(1);     % cla
plot(t, y)
xlabel('Time (sec)')
ylabel('Signal (Unit)')

% whiteNoise = wgn(length(t(:,1)), 1, 1)
% yNoise = y + whiteNoise;
yNoise = awgn(y,10); % Add white Gaussian noise.
figure(2);      cla
plot(t, y, 'b', t, yNoise, 'r')
xlabel('Time (sec)')
ylabel('Signal (Unit)')
legend('Filtered Signal','Measured Signal')




%% Linear Regression Equation w/ cftool
clear all

t = 0:1:10;
oriY = 0:1:10;
meaY = oriY + awgn(oriY,10).*sin(t*pi/2);        % Add white Gaussian noise

figure(3);      cla
plot(t, oriY, 'b*', t, meaY, 'ro')
grid on
xlabel('Time (sec)')
ylabel('Signal (Unit)')
legend('Measured Signal', 'Filtered Signal')











