function check = valid(elemento, BF, k)
    n = length(BF);
    check = true;
    for i = 1:k
        
        elemento = [elemento num2str(i)];
        h = string2hash(elemento,'djb2');
        h = mod(h,n) + 1; %para dar valor entre 1 e n para por no BF
        if ~BF(h)
            check = false;
            break;
        end
    end
end
