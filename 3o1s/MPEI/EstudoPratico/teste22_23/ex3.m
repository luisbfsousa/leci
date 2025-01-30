
frase1 = 'Lisboa e Porto são cidades importantes de Portugal.';
frase2 = 'Lisboa é a capital de Portugal.';
frase3 = 'Porto é a capital do Norte de Portugal.';
frase4 = 'Protugal não é só Lisboa e Porto.';

fraseCell = {frase1, frase2,frase3,frase4};
Nu = 4;
k = 4;
shinglesize = 3;

FraseMinHash = zeros(Nu, k);

for FraseN=1:Nu
    Frase = fraseCell{1,FraseN};
    for hashFuncN=1:k
        hashArr=zeros(1,strlength(Frase)-shinglesize+1);

        for ShingleN=1:strlength(Frase)-shinglesize+1
            key = char(Frase(ShingleN:(ShingleN+shinglesize-1)));
            hashArr(ShingleN) = hf1(key,hashFuncN)+1;
        end
        
        FraseMinHash(FraseN,hashFuncN) = min(hashArr);
    end
end
% display assinatura Frase1, Frase2, Frase3, Frase4
disp(FraseMinHash);

Distance = zeros(4,4);

for n1=1:length(FraseMinHash)
    for n2=n1:length(FraseMinHash)
        isMatch = FraseMinHash(n1,:)==FraseMinHash(n2,:);
        Distance(n1,n2) = 1-sum(isMatch)/length(isMatch);
    end
end
% display distancia entre Frase1vsFrase2, Frase1vsFrase3, Frase1vsFrase4, Frase2vsFrase3, Frase2vsFrase4, Frase3vsFrase4
disp(Distance);
