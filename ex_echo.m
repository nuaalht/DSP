%% echo add
% [ x(n) = y(n) + alpha * y(n - D)  alpha<1 ]
load handel; % the signal is in y and sampling freq in Fs (sampled at 8192 sam/sec)
sound(y,Fs); pause(10); % Play the original sound (73113/8192 = 8.9249)
alpha = 0.9; D = 4196; % Echo parameters [ x(n) = y(n) + alpha*y(n - D) alpha<1 ]
b = [1,zeros(1,D),alpha]; % Filter parameters
x = filter(b,1,y); % Generate sound plus its echo
sound(x,Fs); % Play sound with echo
%% echo remove
% w(n) + alpha * w(n - D) = x(n) 
% x(n) is the echo-corrupted sound signal and w(n) is the output sound signal
pause(10);
w = filter(1,b,x);
sound(w,Fs)