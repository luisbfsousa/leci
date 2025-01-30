function B = BloomInsert(B,key,k)
    % B - Bloom Filter inicializado a 0's
    % k - número de hash's function a ser usada
    % C - conjunto de chaves

    n = length(B);

    for i = 1:k
        key = [key num2str(i)];
        h = string2hash(key);    % Aplicação da função hash
        h = rem(h,n) + 1;  % Para conseguir utilizar o valor do hash no bloom filter, adicionar 1 pois as posições em matlab começam a 1
        B(h) = true;   % Colocar a posição calculada a true
    end

end

% function [Bloom] = BloomInsert(Bloom, elem, k)
% %BLOOMINSERT Summary of this function goes here
% %   Detailed explanation goes here
%     n = length(Bloom);
    
%     for i=1:k
%         elem = [elem int2str(i)];
%         index = mod(string2hash_ex(elem,k),n)+1;         
%         Bloom(index)= Bloom(index)+1;
%     end
% end