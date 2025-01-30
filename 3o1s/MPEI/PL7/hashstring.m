function code =  hashstring(chave, tablesize)
len=length(chave);
chave= double(chave);
hash=0;
for i=1:len  
    c = chave(i)+33;
    %hash = ((hash<<3) + (hash>>28) + c);
    hash= (bitshift(hash,3)+ bitshift(hash,-28))+c;
end
code=mod(hash,tablesize);

