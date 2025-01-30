%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Procedimentos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% Capítulo 2

%% Função (Massa) de Probabilidade 
% 1º: Calcular a probabilidade 
% 2º: Usar a função stem
% Exemplo:
xi = 1:6; % --> Substituir
prob_x = probabilidade_calculada; % --> Substituir
stem(xi, prob_x), xlabel('xi'), ylabel('prob_x(xi)');
title("Função Massa de Probabilidade");
subplot(1,1,1);
axis([-1 5 0 1]); % --> Substituir
grid on;

%% Função de Distribuição Acumulada
% 1º: Calcular a probabilidade 
% 2º: Usar a função cumsum
% 3º: Usar a função stairs
% Exemplo:
xi = 1:6; % --> Substituir
prob_x = probabilidade_calculada; % --> Substituir
fx = cumsum(prob_x);
stairs(xi, fx), xlabel('xi'), ylabel('prob_x(xi)');
title("Função de Distribuição Acumulada");
subplot(1,1,1);
axis([-1 5 0 1]); % --> Substituir
grid on;

%% Valor Esperado (Média)
% Soma de todos os valores --> Valores: Multiplicar o Xi por Px(X1) 
X = 0:4; % --> Substituir
prob_x = probabilidade_calculada; % --> Substituir
media = sum(X.*prob_x); % E[X] --> Média ou Valor Esperado

% Propriadades --> a e c são constantes
% E[aX]  = aE[X]
% E[X+Y] = E[X] + E[Y]
% E[X+c] = E[X] + c

%% Variância
% Fórmula: E[X^2] - E^2[X] 
X = 0:4; % --> Substituir
prob_x = probabilidade_calculada; % --> Substituir
variancia = sum(X.^2.*prob_x) - (sum(X.*prob_x)^2);

% Propriadades --> c é uma constante
% var(X+c) = var(X) 
% var(cX)  = c^2 var(X)

%% Desvio Padrão 
% Pode ser representada por --> σ
% O Desvio Padrão é a Raiz Quadrada da Variância
desvio_padrao = sqrt(variancia);

%% Distribuição de Poisson 
% Forma limite da Distribuição Binomial
% n --> ∞ (Infinito) | p --> 0 | np --> permanece constante
% p --> Probabilidade
% n --> Tamanho da amostra 
% k --> Valor ou conjunto de valores a calcular a probabilidade 
% Valor Esperado (Média) --> λ = np | lambda = np
lambda = n*p;
prob = poisscdf(k,lambda);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% Capítulo 3

%% Cadeia de Markov Introdução
% T --> Matriz Transição de Estados
% Soma das colunas tem de ser igual a 1. Caso tal aconteça estamos perante 
% uma matriz estocástica

% Exemplo
%    A   B   C   D   E   F
T = [0   0   0   0  1/3  0
     1   0   0   0  1/3  0
     0  1/2  0   1   0   0
     0   0   1   0   0   0
     0  1/2  0   0   0   0
     0   0   0   0  1/3  0];

% Estado Inicial em A
x0 = [1   % A
      0   % B
      0   % C
      0   % D
      0   % E
      0]; % F

% Vetor Estado após k transições
k = 10;
x10 = T    * x9; % 1  + 9 = k
x10 = T^10 * x0; % 10 + 0 = k
x10 = T^5  * x5; % 5  + 5 = K

% Vetor estado dá a probabilidade de estar no Estado A, B, ... F.
% Neste caso, ao fim de k transições


%% Probabilidades Limite de cada Estado
% As probabilidades limite de cada estado são calculadas através
% do vetor estacionário
% Tamanho da matriz = 6 --> Substituir o 6 pelo tamanho da tua matriz
M = [T - eye(6); ones(1,6)];
x = [zeros(6,1); 1]; % x = [0; 0; 0; 0; 0; 0; 1]
u = M\x;
  
% As probabilidades do vetor estacionário são iguais aos valores
% da matriz após n iterações, sendo que n tende para infinito
% Assim o vetor estacionário contém o valor das probabilidades para os
% estados limites de uma matriz regular

%% Calcular a Matriz Q
%     A   B    C    D   E
T = [0.8  0    0   0.3  0
     0.2  0.6  0   0.2  0
     0    0.3  1   0    0
     0    0.1  0   0.4  0
     0    0    0   0.1  1];

% 1º Determinar os Estados Absorventes: C e E
% 2º Estados absorventes são deslocados para a direita
%       A   B    D    C   E
aux = [0.8  0    0.3  0   0
       0.2  0.6  0.2  0   0
       0    0.1  0.4  0   0
       0    0.3  0    1   0
       0    0    0.1  0   1];
% Matriz Q vão ser só os estados não absorventes
% Neste caso temos 3 estados não absorventes
Q = aux(1:3, 1:3);

%% Calcular a Matriz F
% É necessário calcular a matriz Q primeiro
% Substituir o 3 pelo tamanho da matriz Q
F = (eye(3) - Q)^-1;

%% Valor Esperado (Média) do nº de passos até à absorção
% Referente à matriz F
% Exemplo Média começando no estado A e B:
xA = [1
      0
      0];

media = sum(F*xA);

xB = [0
      1
      0];

media = sum(F*xB);

%% Matriz H --> Hiperligações
% A probabilidade de Transição para cada página para outra página é sempre
% igual 

   % A   B  C  D   E   F
H = [0   0  0  0  1/3  0
     1   0  0  0  1/3  0
     0  1/2 0  1   0   0
     0   0  1  0   0   0
     0  1/2 0  0   0   0
     0   0  0  0  1/3  0];

x0 = [1/6; 1/6; 1/6; 1/6; 1/6; 1/6]; % --> Subituir 6 pelo tamanho da matriz

%% Page Rank ao fim de 10 iterações
x9 = H^9*x0;

%% Spider-Trap --> C e D
% Spider-Trap --> Loops. Ficamos presos num conjunto de páginas
% De modo a que a matriz H fique sem spider-traps

B = 0.8; % Beta --> Geralmente é 0.8
A = 0.8 * H + 0.2 / ones(6)/6; % Beta * H + (1 - Beta) * 1/N --> N número de páginas
p = A^9*x0; % --> Page Rank ao fim de 10 iterações

%% Dead-End --> F 
% DeadEnd --> Beco sem saída. Ficamos retidos numa página 
% De modo a que a matriz H fique sem DeadEnd

H = [0 0   0 0 1/3 1/6;
     1 0   0 0 1/3 1/6;
     0 1/2 0 1 0   1/6;
     0 0   1 0 0   1/6;
     0 1/2 0 0 0   1/6;
     0 0   0 0 1/3 1/6];


%% Caso dêem a Matriz L --> Tranformar na Matriz H

H = zeros(length(L));

for i = 1:length(L)
    soma = sum(L(:, i)); % soma das páginas para quais aponta

    if (soma ~= 0)
        H(:, i) = L(:, i) / soma;
    end

end

%% Matriz do Google 
A = 0.85 * H + 0.15 / length(H) * ones(length(H));

%% Calcular o Page Rank de cada página considerando um número mínimo de 
%% iterações que garanta que nehum valor muda mais que 10^-4 em 
%% 1 iteração.
    
oldstate = ones(length(H), 1) / length(H);
iterations = 0;

while (1)
    newstate = A * oldstate;
    iterations = iterations + 1;

    if (max(abs(newstate - oldstate)) < 10^-4)
        break;
    end

    oldstate = newstate;
end


% Número de iterações é dado por:
disp(iterations);

% Valor do Page Rank para 1 página específica
disp(newstate(22));

%% Usando a Matriz do Google, calcular o pagerank usando um método iterativo 
%% até que a diferença de pagerank entre 1 iterações não exceda 0.01. 

A = 0.85 * T + 0.15 * ones(6) / 6;

% pagerank inicial
oldstate = ones(length(A), 1) / length(A);

while (1)

    newstate = A * oldstate;

    if max(abs(x - x_old)) < 0.01
        break
    end

    oldstate = newstate;

end

disp(max(newstate, [], 'all')) % Página com o maior page rank 
disp(min(oldstate, [], 'all')) % Página com o menor page rank

%% Calcular o Page Rank por processo não iterativo
% Não faço a menor ideia

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% Capítulo 4

%% Gerar chaves
% Usar o que fizeram no guião 4 secção 1

%% Funções de Dispersão Hash
% Funções de Dispersão: string2hash, hashstring e DJB31MA

% String2Hash djb2 ou sdbm 
load keys
sizes = [5e5, 1e6, 2e6]; % Tamanhos da HashTable

for i = 1:length(sizes)
    collisions = 0;
    vectorTables = zeros(1, sizes(i)); % Gerar a Hash Table
    hashCodes = zeros(1, length(keys)); % Guardar os HashCodes de cada Key
    
    for j = 1:length(keys) 
        hashCodes(j) = mod(string2hash(keys{j}, 'djb2'), length(vectorTables)) + 1; % HashCode --> Resto da Divisão Inteira ente a soma dos HashCodes de cada caracter e o comprimento da HasHTable 
                                                                                    % +1 porque o MatLab guarda valores a partir do 1
        if vectorTables(hashCodes(j)) > 0 % Colisão --> Quando 1 ou mais values são assigned para o mesmo index da HashTable 
            collisions = collisions + 1;
        end

        vectorTables(hashCodes(j)) = vectorTables(hashCodes(j)) + 1;
    end
end

% HashString
for i = 1:length(sizes)
    collisions = 0;
    vectorTables = zeros(1, sizes(i));
    hashCodes = zeros(1, length(keys));
   
    for j = 1:length(keys)
        hashCodes(j) = mod(hashstring(keys{j}, sizes(i)), length(vectorTables)) + 1;

        if vectorTables(hashCodes(j)) > 0
            collisions = collisions + 1;
        end

        vectorTables(hashCodes(j)) = vectorTables(hashCodes(j)) + 1;
    end
end

% DJB31MA
for i = 1:length(sizes)
    collisions = 0;
    vectorTables = zeros(1, sizes(i));
    hashCodes = zeros(1, length(keys));
    
    for j = 1:length(keys)
        hashCodes(j) = mod(DJB31MA(keys{j}, sizes(i)), length(vectorTables)) + 1;

        if vectorTables(hashCodes(j)) > 0
            collisions = collisions + 1;
        end

        vectorTables(hashCodes(j)) = vectorTables(hashCodes(j)) + 1;
    end

end

%% Filtros de Bloom
% Preparação para usar Filtros de Bloom
% 1º Criar a função initBloomFilter
% 2º Criar a função inserElement
% 3º Criar a função isMember 

% Número de funções hash ideal a utilizar é entre 5 e 6

% Utilizar o Filtro de Bloom
%% 1º Inicializar o Filtro de Bloom com o tamanho indicado
n = 8000; % --> Tamanho do BloomFilter
k = 3; % --> Número de funções de Hash 
bloomFilter = initBloomFilter(n);
seeds = randi(2^32, k); % 10x1 Vector

%% 2º Inserir as palavras no Bloom Filter
% Inserir palavras no Bloom Filter
for i = 1:length(palavras)
    bloomFilter = insertElement(bloomFilter, seeds, convertStringsToChars(palavras(i)), k);
end

%% Testar Falso Negativo (Caso seja necessário)
% Falso Negativo --> Elemento estar no BloomFilter e isMember (Teste de Pertença) dizer que não está
falseNegatives = 0;
for i = 1:length(palavras)
    if ~isMember(bloomFilter, seeds, convertStringsToChars(palavras(i)), k)
        falseNegatives = falseNegatives + 1;
    end
end
fprintf('\nFalsos Negativos: %d', falseNegatives) % Falsos Negativos --> 0

%% Testar Falso Positivo
% Falso Positivo --> Elemento não estar no BloomFilter e isMember (Teste de Pertença) dizer que está 
falsePositives = 0;
for i = 1:length(palavras2)
    if isMember(bloomFilter, seeds, convertStringsToChars(palavras2(i)), k)
        falsePositives = falsePositives + 1;
    end
end
fprintf('\nFalsos Positivos: %d', falsePositives);

%% Calcular Falso Positivos Teóricamente 
m = length(palavras);
fprintf('\nResultado Teórico: %.2f%%', (1-exp(-(k*m)/n))^k*100) 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%