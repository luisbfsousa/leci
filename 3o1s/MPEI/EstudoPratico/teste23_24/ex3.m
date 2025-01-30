% Ler o arquivo Excel
frase = readtable("cars2.xlsx", 'VariableNamingRule', 'preserve');

% Inicializar parâmetros
Nu = 4; % Número de linhas a considerar
k = 4;  % Número de funções de hash

% Inicializar a matriz de assinaturas MinHash
FraseMinHash = inf(Nu, k);

% Calcular a assinatura MinHash para cada linha
for FraseN = 1:Nu
    Frase = frase(FraseN, :);
    
    % Converter a linha em um conjunto de strings
    elementos = cellfun(@string, table2cell(Frase), 'UniformOutput', false);
    elementos = unique([elementos{:}]); % Remover elementos duplicados

    for hashFuncN = 1:k
        hashArr = inf(size(elementos));
        for idx = 1:length(elementos)
            key = elementos{idx};
            hashArr(idx) = hf24(key, hashFuncN);
        end
        FraseMinHash(FraseN, hashFuncN) = min(hashArr);
    end
end

% Exibir assinaturas MinHash
disp(FraseMinHash);

% Calcular a distância de Jaccard entre todas as linhas
Distance = zeros(Nu, Nu);
for n1 = 1:Nu
    for n2 = n1:Nu
        isMatch = FraseMinHash(n1, :) == FraseMinHash(n2, :);
        Distance(n1, n2) = 1 - sum(isMatch) / k;
        Distance(n2, n1) = Distance(n1, n2); % A matriz de distância é simétrica
    end
end

% Exibir distâncias
disp(Distance);
