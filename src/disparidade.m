function result = disparidade(left,right,xmin,xmax,larg)

[n,m] = size(left); 

Disparidade = NaN(n,m);


for i = larg+1 : n-larg
    for j = xmax+larg+1: m-larg
        disp = [];
        p = 0;        
        compara = left(i-larg:i+larg,j-larg:j+larg);
        for z = j:-1:j-xmax
            p = p+1; 
           
           dispa(p) = sum(sum(abs(double(right(i - larg : i + larg,...
           z - larg : z + larg)) - double(compara(:,:)))));
           
        end
    dist = find(dispa == min(dispa));
    minimo = min(dist);
    Disparidade(i,j) = minimo + xmin;
    end
end

result = Disparidade(:,:);

end
