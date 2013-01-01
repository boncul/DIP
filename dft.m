% 
% X=dft(x) 
% 
function X = dft(x) 
N = length(x); 
X = zeros(size(x)); 
i = sqrt(-1); 
for k = 0:N - 1 
    for n = 0:N - 1 
        X(k + 1) = X(k + 1) + x(n + 1) * exp(-2 * pi * i * k * n / N); 
    end 
end
x = x / N;
