function resultado = BloomVerify(B,key,k,n)
    res = zeros(k,1);
    for i= 1:k
        key1 = [key num2str(i)];
        code = mod(string2hash_ex(key1,k),n)+1;
        res(i) = B(code);
    end
    resultado = min(res);
end


