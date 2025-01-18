function y = Tfconvolution(h,x)
% Réalise la convolution de h et x
tfh=fft2(h);
tfx=fft2(x);
tfy=tfh.*tfx;
y=ifft2(tfy);
end