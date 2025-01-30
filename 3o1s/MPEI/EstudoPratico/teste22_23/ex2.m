%% a)
disp('a)');

% n = ceil(m / (-k / log(1 - exp(log(p) / k))))
% p = pow(1 - exp(-k / (m / n)), k)
% m = ceil((n * log(p)) / log(1 / pow(2, log(2))));
% k = round((m / n) * log(2));

k = 1; % número de funções de dispersão
n = 300; % número de elementos
p = 0.03; % falsos posistivos

% calcula o tamanho adequado do filtro de Bloom
m = ceil(-n/log(1-p));

disp(m);

% ---------------------------------------------
%% b) Inicializar o flitro de Bloom usando o tamanho calculado anterirormente. De seguida inclua no filtro 300 palavras diferentes
% geradas aleatoriamente com as caracteristicas definidas acima. Use a função de dispersão default providenciada pela função
% string2hash na implementação das funções do filtro de Bloom.
% Finalmente, determine por simulação a probabilidade de falsos positivos do filtro implementado, usando
% um conjunto de adequado de palavras.
disp('b)');

Bloom = BloomInit(m); % inicializa o filtro de Bloom
chars = 'a':'z'; % caracteres a usar na geração de palavras
cellStrings = cell(1, m);

charsMin = 5; 
charsMax = 8;

keys = genKeys(m, charsMin, charsMax, chars); % gera as palavras aleatórias

for i = 1:n
    Bloom = BloomInsert(Bloom, keys{i}, k); % insere as palavras no filtro de Bloom
end

count = 0;

for j = 301:m
    if BloomVerify(Bloom, keys{j}, k) == true % verifica se as palavras estão no filtro de Bloom
        count = count + 1;
    end
end

probFalsoPositivo = count / m; % calcula a probabilidade de falsos positivos

fprintf("Probabilidade de falsos positivos: %f%%\n", probFalsoPositivo*100);