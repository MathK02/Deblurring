function yb = BruitImage(y,RSB)
%applique un bruit gaussien à l'image y tel que le rapport signal sur bruit
%(en dB) sera RSB
    v=var(y(:));
    sigmab=sqrt(v/10^(RSB/10));
    r=random("Normal",0,sigmab,size(y));
    yb=y+r;
end