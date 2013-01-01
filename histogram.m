function H = histogram(I) 
 
s = size(I);
H = zeros(1, 256);

for i = 1:s(1) * s(2) 
    H(I(i) + 1) = H(I(i) + 1) + 1; 
end
