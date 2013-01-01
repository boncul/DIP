function P = para_say(resim)
I = imread(resim);
 
I2 = im2bw(I);
BW = im2bw(I2);
 
%BW_not = not(BW);
BW_dolu = imfill(BW, 'holes');
 
L = bwlabel(BW_dolu, 8);
imshow(L)
R = regionprops(L, 'Eccentricity');
a = [R.Eccentricity];
 
f = a < 0.4;
 
[x, y] = find(f == 0)
 
%bul = L == y(1);
%L(bul) = 0;
for i = 1:length(y)
    bul = find(L == y(i));
    L(bul) = 0;
end
 
figure; imshow(L)
 
[etiket, sayi] = bwlabel(L);
fprintf('%d para var.\n', sayi)
end
