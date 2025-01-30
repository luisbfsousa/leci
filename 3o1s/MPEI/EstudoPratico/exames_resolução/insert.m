function BF = insert(elemento, BF, k)
    n = length(BF);
    for i = 1:k
        elemento = [elemento num2str(i)];
        h = string2hash(elemento,'djb2');
        h = mod(h,n) + 1;
        BF(h) = true;
    end
end