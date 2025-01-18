function x= FiltreWiener(h,y,lambda)
% Inverse le filtre h selon un filtre de Wiener en supposant un rapport
% signal sur bruit de 1/lambda, l'applique à y et x est le résultat.
tfh=fft2(h);
tfy=fft2(y);
tfx=tfy.*conj(tfh)./(tfh.*conj(tfh)+lambda);
x=ifft2(tfx);
end