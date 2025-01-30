% a)
disp('a)')

T = [0   0     0.8    0   0;
     1   0     0      0   0;
     0   0.9   0      0   0;
     0   0.1   0      1   0;
     0   0     0.2    0   1];

%estados 4 e 5 sao absorventes, se o sistema chega a um deles, permanece lá (diagonal tem valor 1)
%estados 1 2 3 sao transitorios, teem probabilidade para outros estados

% Q = T(1:4, 1:4);
% F = inv(eye(length(Q)) - Q);

disp(T);



% b)
disp('b)')

% Calcule a probabilidade de partindo do estado 1 voltar ao estado 1 ao fim de 12 iterações

v0 = [1 0 0 0 0]; % é o vetor inicial, indicando que o sistema começa no estado 1

%T^12 calcula a matriz de transição após 12 iterações, ou seja, as probabilidades de alcançar qualquer estado após 12 passos
p12 = T^12 * v0'; %Multiplicando T^12 pelo v0, obtemos um vetor onde cada posição representa a probabilidade de estar em um estado específico após 12 iterações.

disp(p12(1)); %A probabilidade de estar no estado 1 após 12 iterações é extraída como p12(1)



% c)
disp('c)')

% Sabendo que o estado inicial foi o 1, determine o número médio de iterações antes de atingir um estado absorvente

Q = T(1:3, 1:3); %A submatriz Q é extraída de T, contendo apenas os estados transitórios (estados 1, 2, e 3)

I = eye(size(Q, 1)); %I é a matriz identidade com o mesmo tamanho de Q

% Matriz fundamental F
F = inv(I - Q);

% Número médio de iterações
iteracoes = sum(F(1, :));  %Para o estado inicial 1, o número médio de iterações é a soma da primeira linha de F, sum(F(1,:))

disp(iteracoes);



% d)
disp('d)')

% sabendo que o estado inicial foi o 1, determine  a probabilidade de a absorção se dar no estado 4

R = T(4:5, 1:3); %A submatriz R é extraída de T, representando as transições dos estados transitórios (1, 2, 3) para os estados absorventes (4, 5).

pAbsor = R * F; %A matriz contém as probabilidades de absorção em cada estado absorvente, partindo de qualquer estado transitório

pAbsor4 = pAbsor(1, 1); %probabilidade de, começando no estado 1, o sistema ser absorvido pelo estado 4

disp(pAbsor4);