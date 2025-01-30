% EXERCÍCIO 2
% Considere um sistema com 4 estados (1, 2, 3 e 4) modelado por uma cadeia
% de Markov com a matriz de transição de estados T seguinte.
disp("--------------------------------------")
disp("Exercício 2 (Cadeia de Markov)")
T= [0.2 0.4 0.1 0
    0.4 0.3 0.1 0.1
    0.3 0.3 0.8 0.1
    0.1 0   0   0.8];
% (a) (3.0 valores) Qual a probabilidade de o sistema, começando no
%     estado 2, estar no estado 4 após 5 transições?
% (b) (2.0 valores) Qual a probabilidade de o sistema, começando no
%     estado 2, manter-se no estado 2 nas 5 primeiras transições?

disp("a)")

v0 = [0;
      1;
      0;
      0];

p5 = T^5 * v0;
disp(T5(4));

%--------------------------

disp("b)")

disp(T5(2));

% EXERCÍCIO 3
% Considere um conjunto de 4 páginas web (A, B, C e D) com os hyperlinks
% seguintes entre eles:
% A -> B , A -> C , B -> C , C -> D
%
% (3.0 valores) Determine o pagerank de cada página web ao fim de 10
% iterações assumindo beta = 0.8 e resolvendo primeiro problemas que
% possam existir de 'spider traps' e/ou 'dead-ends'.
disp("--------------------------------------")
disp("Exercício 3 (Pagerank)")

H = [0    0  0  0;
     1/2  0  0  0;
     1/2  1  0  0;
     0    0  1  0];

% resolver spider trap
% HSolved = [0    0  0  1/2;
%            1/2  0  0  0;
%            1/2  1  0  1/2;
%            0    0  1  0];

% resolver deadend (Matriz resolvida)
HSolved = [0    0  0  1/4;
           1/2  0  0  1/4;
           1/2  1  0  1/4;
           0    0  1  1/4];


N = length(H); % numero de paginas
beta = 0.8; % fator de amortecimento

A = beta * HSolved + (1 - beta) * ones(N)/N; % Matriz Google

r = ones(N, 1)/N; % pagerank inicial
for i = 1:10
    r = A * r;
end

disp(r);

% EXERCÍCIO 4
% Considere as 2 funções no fim deste script que implementam duas das
% funcionalidades necessárias à implementação de um filtro de Bloom.
% Considere também os dois conjuntos de chaves seguintes:
disp("--------------------------------------")
disp("Exercício 4 (Filtro de Bloom)")

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

disp("a) BloomInit em ficheiro diferente")

disp("b)")

k = 6;
n = 100;
m = length(CH1);
m2 = length(CH2);
% i)
Bloom = BloomInit(n);
fprintf("i)-------------\n")
for i = 1:m
    Bloom = AddElement(Bloom, CH1{i}, k);
    fprintf("%s adicionado ao Bloom\n", CH1{i})
end


fprintf("\nii)-------------\n")

for i = 1:m
    if BloomIsMember(Bloom, CH1{i}, k) == false
        fprintf("%s não pertence ao Bloom\n", CH1{i})
    else
        fprintf("%s pertence ao Bloom\n", CH1{i})
    end
end

fprintf("\niii)-------------\n")


for i = 1:m2
    if BloomIsMember(Bloom, CH2{i}, k) == true
        fprintf("%s pertence ao Bloom\n", CH2{i})
    else
        fprintf("%s não pertence ao Bloom\n", CH2{i})
    end
end

% 4 a)
function res = BloomIsMember (B, key, k)
    res = true; % Output a true (pertence)
    % Fazer a hash e calculo das posicoes tal e qual como se fosse para adicionar o valor
    h = 127;
    key = double(key);
    nBF = length(B);

    for i = 1:length(key)
        h = mod(31*h + key(i), 2^32 - 1);
    end

    for i = k:-1:1
        h = mod(31*h + i, 2^32 - 1);
        if B(mod(h, nBF) + 1) == 0 % Se uma das posicoes tiver o valor 0 entao este elemento nao pertence ao BF
            res = false; % Output a false (não pertence)
            break;
        end
    end
end

% Func dada pelo stor
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
