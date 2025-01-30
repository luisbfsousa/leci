clear all;
clc;

%% a)

m = 1000;
n = 5000;
k = 2;

perro = (1-exp(-k*m/n))^k;
kotimo = log(2)*n/m;

%% b)

alfabeto = 'a':'z';
palavras = unique(GenerateString(m,alfabeto));
rep = repetitions(palavras,107637);

B = BloomInit(n);

for i=1:length(rep)
    word = rep{i};
    B = BloomInsert(B,word,k);
end

vezesArr = zeros(1,3);
for i = 1:3
    word = palavras{i};
    vezes = BloomVerify(B,word,k,n);
    vezesArr(i) = vezes;
end


