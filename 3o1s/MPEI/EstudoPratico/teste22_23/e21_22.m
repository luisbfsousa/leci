
% EXERCÍCIO 1
% Considere um processo aleatório que gera dois números: o primeiro número
% de 1 a 4 (com todos os valores igualmente prováveis) e o segundo número
% de 4 a 8 (com todos os valores também igualmente prováveis).
% Seja X a variável aleatória que representa o segundo número menos o
% primeiro número.
% (a) (3.0 valores) Estime por simulação (usando 10000 simulações) a função
%     massa de probabilidade da variável aleatória X e apresente-a num
%     gráfico do tipo stem.
% (b) (2.0 valores) Com base na função massa de probabilidade estimada,
%     estime o valor esperado, a variância e o desvio padrão da variável
%     aleatória X.
% (c) (2.0 valores) Determine o valor teórico da probabilidade de X ser
%     maior que 3, sabendo que o primeiro número é 2.

fprintf("Exercicio 1:\n");
% 1a)
N = 10000;
X1 = randi([1 4], 1, N);  % Geração das N experiencias para X1
X2 = randi([4 8], 1, N);  % Geração das N experiencias para X2
X = X2 - X1;
ocorrencias = zeros(1, length(unique(X)));  % Vetor que conta o numero de cada resultado (neste caso de 0 a 7)

for i = 1:N
    ocorrencias(X(i) + 1) = ocorrencias(X(i) + 1) + 1;  % contador++ sendo que a posiçao 1 representa X=0 e assim adiante
end
fX = ocorrencias/N;  % Variavel que detem as probabilidades de cada evento (valor de X) acontecer nesta experiencia

X = unique(X);  % Usado para os valores do grafico
stem(X, fX),xlabel('X'),ylabel('fX(x)');  % Fazer um grafico do tipo massa de probabilidade da variavel X
title("1a)");
axis([-1 8 0 0.3]);  % Acertar os eixos do grafico para melhor ver o resultado
fprintf("1a) Gráfico que apresenta a massa de probabilidade da variável X tem o nome de Figure 1.\n");

% 1b)
media = sum(fX.*X);  % Calculo da media
variancia = sum(fX.*(X.^2)) - media^2;  % Calculo da variancia com o valor da média obtido anteriormente
desvioPadrao = sqrt(variancia);  % Calculo do Desvio Padrao
fprintf("1b) Media -  %f, Variância - %f, Desvio padrão - %f.\n", media, variancia, desvioPadrao);

% 1c)
% X1 = 2
% X2 = {4, 5, 6, 7, 8}
% X = {2, 3, 4, 5, 6} há 5 casos possiveis quando X = X2 - 2
% X>3 = {4, 5, 6} são 3 casos favoráveis.
% Pela Lei de Laplace
% P(X > 3 | X1 = 2) =  Casos favoráveis / Casos possíveis = 3/5
fprintf("1c) O valor teórico da probabilidade de X ser maior que 3, sabendo que o primeiro número é 2: 3/5.\n\n");

% EXERCÍCIO 2
% Considere um sistema com 4 estados (1, 2, 3 e 4) modelado por uma cadeia
% de Markov com a matriz de transição de estados T seguinte.

T= [0.2 0.4 0.1 0
    0.4 0.3 0.1 0.1
    0.3 0.3 0.8 0.1
    0.1 0   0   0.8];

% (a) (3.0 valores) Qual a probabilidade de o sistema, começando no
%     estado 2, estar no estado 4 após 5 transições?
% (b) (2.0 valores) Qual a probabilidade de o sistema, começando no
%     estado 2, manter-se no estado 2 nas 5 primeiras transições?
fprintf("Exercicio 2:\n");
% 2a)
T5 = T^5;
fprintf('2a) A probabilidade de estar no estado 4 passado 5 transições é de %f.\n', T5(4,2));

% 2b)
fprintf('2b) A probabilidade de estar no estado 2 passado 5 transições é de %f.\n\n', T5(2,2));

% EXERCÍCIO 3
% Considere um conjunto de 4 páginas web (A, B, C e D) com os hyperlinks
% seguintes entre eles:
% A -> B , A -> C , B -> C , C -> D
%
% (3.0 valores) Determine o pagerank de cada página web ao fim de 10
% iterações assumindo beta = 0.8 e resolvendo primeiro problemas que
% possam existir de 'spider traps' e/ou 'dead-ends'.
fprintf("Exercicio 3:\n");
    %a   b  c  d
H = [0   0  0  0   % a
     1/2 0  0  0   % b
     1/2 1  0  0   % c
     0   0  1  0]; % d
% H é meramente uma matriz de auxilio que representa o que foi dadao no
% enunciado

          %a   b  c  d
HSolved = [0   0  0  1/4   % a
           1/2 0  0  1/4   % b
           1/2 1  0  1/4   % c
           0   0  1  1/4]; % d
% HSolved representa a matriz com o dead-end resolvido e com os estados
% absorvidos juntos 

beta = 0.8;
N = length(HSolved);
sobreN = ones(N)/N;  % Fazer a matriz NxN de 1/N

ranks = ones(N, 1)*1/N;  % Rank inicial de cada página é 1/N porque tem 
% probabilidades iguais de começar em qualquer pagina

A = beta*HSolved + (1 - beta)*(sobreN);  % Obter matriz A com beta = 0.8
ranks = A^10*ranks;

fprintf("Os ranks das páginas são: A - %f, B - %f, C - %f, D - %f.\n\n", ranks(1), ranks(2), ranks(3), ranks(4));

% EXERCÍCIO 4
% Considere as 2 funções no fim deste script que implementam duas das
% funcionalidades necessárias à implementação de um filtro de Bloom.
% Considere também os dois conjuntos de chaves seguintes:

CH1= {'Amelia','Emma','Damian','Joe','Madison','Megan','Susan','Thomas'};
CH2= {'George','Jack','Oscar','Sarah'};

% (a) (3.0 valores) Desenvolva a função que falta para, com as funções
%     fornecidas, ter todas as funcionalidades necessárias à implementação
%     de um filtro de Bloom.
% (b) (2.0 valores) Desenvolva um script que (i) crie um filtro de Bloom
%     de comprimento 100 baseado em 6 funções de dispersão com as
%     chaves de CH1, (ii) teste a pertença das chaves de CH1 no filtro de
%     Bloom criado e (iii) verifique se as chaves de CH2 pertencem ao
%     filtro de Bloom.
fprintf("Exercicio 4:\n");

n = 100; % Tamanho do BF
k = 6;  % Numero de funcoes de dispersao

fprintf("4a) Função com o nome 'IsMember' e comentado no código.\n")
% 4b)i) 
BF = Init(n); % Iniciar o Bloom Filter
fprintf("4b)i) Bloom Filter foi inciado com o tamanho: %d.\n", n);

% Adicionar todos os elementos do cell array CH1 ao BF
for i = 1:length(CH1)
    BF = AddElement(BF, CH1{i},k);  % Dar update ao BF com o novo elemento
    fprintf("%s foi adicionado ao BF.\n", CH1{i});
end

% 4b)ii)
fprintf("\n4b)ii)\nTestagem da pertença das chaves CH1\n");
% Verificar se todos os elementos de CH1 pertencem ao BF (se não pertencer
% há falso negativo)
for i = 1:length(CH1)
    return_value = IsMember(BF, CH1{i}, k);
    if (return_value)
        return_value = "Sim.";
    else
        return_value = "Não.";
    end
    fprintf("%s é elemento do BF? %s \n", CH1{i}, return_value);
end

% 4b)iii)
fprintf("\n4b)iii)\nTestagem da pertença das chaves CH2\n");
% Verificar se todos os elementos de CH2 pertencem ao BF (se pertencerem há
% falsos positivos)
for i = 1:length(CH2)
    return_value = IsMember(BF, CH2{i}, k);
    if (return_value)
        return_value = "Sim.";
    else
        return_value = "Não.";
    end
    fprintf("%s é elemento do BF? %s \n", CH2{i}, return_value);
end

% 4a)
function value = IsMember(BF,chave,k)
    value = true;  % Inicializar o output a true (pertence)
    % Fazer a hash e calculo das posicoes tal e qual como se fosse para
    % adicionar o valor
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        if (BF(mod(h,nBF)+1) == 0)  % Se uma das posicoes tiver o valor 0 entao este elemento nao pertence ao BF
            value = false;  % Output a false (não pertence)
            break;
        end
    end
end

% Funcoes dadas pelos professores
function BF= Init(n)
    BF= zeros(n,1);
end

function BF= AddElement(BF,chave,k)
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        BF(mod(h,nBF)+1)= 1;
    end
end