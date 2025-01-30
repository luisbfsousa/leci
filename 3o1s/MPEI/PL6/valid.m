function check = valid(elemento, BF, k)
    n = length(BF);
    check = true;
    for i = 1:k
        
        elemento = [elemento num2str(i)];
        h = DJB31MA(elemento, 127);
        h = mod(h,n) + 1;
        if ~BF(h)
            check = false;
            break;
        end
    end
end
