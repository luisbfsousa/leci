function code =  hashstring(chave, tablesize)

len=length(chave);
chave= double(chave);
hash=0;

for i=1:len  

    c = chave(i)+33;
    hash= (bitshift(hash,3)+ bitshift(hash,-28))+c;
end
code=mod(hash,tablesize);