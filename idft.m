% 
% x=idft(X) 
% 
function x = idft(X) 
N=length(X); 
x = zeros(size(X)); 
i = sqrt(-1); 
for k = 0:N - 1 
    for n = 0:N - 1, 
        x(k + 1) = x(k + 1) + X(n + 1) * exp(2 * pi * i * k * n / N); 
    end 
end 
x = x / N;
