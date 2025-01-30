function res = BloomVerify(B,key,k)
    % B - bloom filter
    % key -> chave que irá ser utilizada para verificar se pertence ou não ao conjunto

    m = length(B);
    res = true;
    
    for i = 1:k
        key = [key num2str(i)];
        h = string2hash(key);    % Aplicação da função hash
        h = rem(h,m) + 1;  % Para conseguir utilizar o valor do hash no bloom filter, adicionar 1 pois as posições em matlab começam a 1
        
        if B(h) == false
            res = false;
            break
        end
    end
end

% function resultado = BloomVerify(B,key,k,n)
%     res = zeros(k,1);
%     for i= 1:k
%         key1 = [key num2str(i)];
%         code = mod(string2hash_ex(key1,k),n)+1;
%         res(i) = B(code);
%     end
%     resultado = min(res);
% end
