
k = 2;
n = 500;

% a)
disp('a)')

% Determine a dimensão do universo de pessoas contido no cell array entrada e determine também o número de pessoas com o nome Paul. Deseguida, crie o filtro de Bloom com contagem e adicione os nomes do universo de pessoas contido no cell array entrada. Finlamente, determine quantas pessoas com o nome Paul são indicadas pelo filtro criado
% ler dados.mat
entrada = load ('dados.mat');

m = length(entrada);

% númeor total de pessoas
fprintf('nº total de pessoas: %d\n', m);

% nº de pessoas com o nome Paul
nPaul = strcmp(persons, 'Paul');
nPaul = sum(nPaul);
fprintf('nº de pessoas com o nome Paul: %d\n', nPaul);

% nº de pessoas com o nome Paul
fprintf('nº de pessoas com o nome Paul: %d\n', nPaul);

B = BloomInit(n);

for i = 1:m
    BloomInsert(B, entrada{i});
end

nPaulB = 0;

% nº de pessoas com o nome Paul indicadas pelo filtro
for i = 1:m
    if BloomVeirfy(B, entrada{i}, k) == 1
        nPaulB = nPaulB + 1;
    end
end

