%% x(t) = sigma k from 1 to 3 (1/k*sin(2*pi*k*t)) 0<= t <=1
t = 0:0.01:1; N = length(t); xt = zeros(1,N);
for n = 1:N
    temp = 0;
    for k = 1:3
        temp = temp + (1/k)*sin(2*pi*k*t(n));
    end
    xt(n) = temp;
end
%% Ê¸Á¿ÔËËã
t = 0:0.01:1; x = zeros(1,length(t));
for k = 1:3
    x = x + (1/k)*sin(2*pi*k*t);
end
%% approach three (good)
t = 0:0.01:1; k = 1:3;
xt = 1./k * sin(2*pi*k'*t);