function keys = genKeys(n_keys,imin,imax,alphabet)
    % n_keys -> Número de chaves a gerar
    % keys -> Cell Array com o conjunto de chaves geradas
    % alphabet -> Array com os caracteres a utilizar nas chaves

    %comp = randi([imin imax],n_keys,1);  % Comprimento das chaves a gerar
    keys = cell(n_keys,1); % Criação do cell array para guardar as chaves geradas
    
    n = length(alphabet);
    for i=1:n_keys  % Gerar um array com posições aleatórias 
        if rand < 0.4
            pos = randi(n,1,imin);
            word = alphabet(pos); % 5 caracteres word
        else
            pos = randi(n,1,imax);
            word = alphabet(pos); % 8 caracteres word
        end  % Gerar as keys 
        keys{i} = word;   % Guardar no cell array as keys geradas
    end
    
end