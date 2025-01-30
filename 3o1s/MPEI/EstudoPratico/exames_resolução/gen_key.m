function dicionario = gen_key(m)
    caracteres = 'a':'z';
    dicionario = cell(1,m);
    
    for i= 1:m
        s = rand();
        if s < 0.4
            size = 5;
        else
            size = 8;
        end
        
        key = '';
        for j = 1:size
            key = strcat(key,caracteres(floor((length(caracteres)+1-1)*rand()+1)));
        end
        dicionario{i} = key;
    end
end