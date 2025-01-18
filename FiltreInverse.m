function x = FiltreInverse(h,y)
% Inverse le filtre h, l'applique à y et x est le résultat.
tfh=fft2(h);
tfy=fft2(y);
tfx=tfy./tfh;
x=ifft2(tfx);
end