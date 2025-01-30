clear all

frase1 = 'Os animais são nossos amigos.';
frase2 = 'Os meus primos são muito amigos.';
frase3 = 'Os animais dos meus primos são muito amigos.';
frase4 = 'Os meus primos têm muitos animais.';

fraseCell = {frase1, frase2,frase3,frase4};
Nu = 4;
k = 4;

FraseMinHash = zeros(Nu, k);

for FraseN=1:Nu
    Frase = fraseCell{1,FraseN};
    newFrase = split(Frase(1:end-1)," ");
    for hashFuncN=1:k
        hashArr=zeros(1,length(newFrase));
        for ShingleN=1:length(newFrase)
            key = char(Frase(ShingleN));
            hashArr(ShingleN) = string2hash_ex(key,hashFuncN)+1;
        end
        FraseMinHash(FraseN,hashFuncN) = min(hashArr);
    end
end
Distance = zeros(4,4);

for n1=1:length(FraseMinHash)
    for n2=n1:length(FraseMinHash)
        isMatch = FraseMinHash(n1,:)==FraseMinHash(n2,:);
        Distance(n1,n2) = 1-sum(isMatch)/length(isMatch);
    end
end