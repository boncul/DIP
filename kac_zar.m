function kac_zar(resim)
    I = imread(resim);
    gri = rgb2gray(I);
    sz = size(gri);
    for i=1:sz(1)
        for j=1:sz(2)
          
            if gri(i,j) ~= 255
             gri(i,j) = 0;
          else
             gri(i,j) = 255;
          end
        end
    end
    [etiket, sayi] = bwlabel(gri);
    fprintf('toplam %d zar var\n', sayi);
    imshow(I)
