
%% a)
disp('a)');

a1 = 0.2;
a5 = 0.3;
a3 = 0.1;
a4 = 0.45;

%    1    5     3     4    2   Meta
T = [0    0     0     0    0   0;     % 1
    1-a1  0     1-a3  0    1   0;     % 5
    0     a5    0     a4   0   0;     % 3
    0     1-a5  a3    0    0   0;     % 4
    a1    0     0     0    0   0;     % 2
    0     0     0     1-a4 0   1];    % Meta

% matriz Q de dimensão t * t é formada pelas probabilidades de 
% transição entre estados transientes (retirar linha e coluna do objetivo final)
% (livro do stor pág.330)
Q = T(1:5, 1:5);
% matriz fundamental F (livro do stor pág.331)
F = inv(eye(length(Q)) - Q);
disp(F);

%%----------------------------------------------
% b)
disp('b)');

N = 1e6;
soma = 0;

for n = 1:N
    state = crawl(T,1,6);
    if length(state) == 4
        soma = soma + 1;
    end
end

fprintf('Probabilidade de passar pelo percurso mais pequeno: %f\n', soma/N);

%%----------------------------------------------
% c) Determinar o número médio de casas percorridas desde o início até ao fim do jogo (incluindo a casa inicial e a casa final).
disp('c)');

% R = T(6, 1:5);
% B = R * F;
% disp(B(1,1));

variavel = 0;

for n = 1:N
    state = crawl(T,1,6);
    variavel = variavel + length(state);
end

fprintf('Número médio de casas percorridas: %f\n', variavel/N);