clear all;
clc;

%% a)

m = 400;
k = 1;

n = round(-400/log(0.98));

fprintf("Tamanhp do filtro %d\n", n);

%% b)

filtro = zeros(n,1);
chars = 'abcdefghijklmnopqrstuvwxyz';
cellStrings = cell(1,4400);

for i= 1:length(cellStrings)
    sizeR = rand() < 0.4;
    size = 0;
    if sizeR == 1
        size = 6;
    else
        size = 10;
    end
    
    string = "";
    for j= 0:size
        string=strcat(string,chars(floor((length(chars)+1-1)*rand()+1)));
    end
    cellStrings{i} = string;
end

chaves=cellStrings(1:400);

for i= 1:length(chaves)
    chave = char(chaves{i});
    code = mod(string2hash(chave),length(filtro))+1;
    filtro(code) = 1;
end

chaves=cellStrings(401:4400);

falsos_positivos=0;

for i= 1:length(chaves)
    chave = char(chaves{i});
    code = mod(string2hash(chave),length(filtro))+1;
    resultado = filtro(code);
    
    if resultado == 1
        falsos_positivos = falsos_positivos+1;
    end
end

fprintf("Percentagem de falsos positivos %f%%\n",falsos_positivos/length(chaves)*100);



