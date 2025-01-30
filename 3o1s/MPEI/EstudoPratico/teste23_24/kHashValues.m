function out = kHashValues(key,k)
% out = kHashValues(key,k)
% key - row vector of characteres
% k   - number of the hash functions
% out - row vector with k hash values (each value between 0 and 2^32-1)   

    out= zeros(1,k);
    key=double(key);
    hash = 5381; 
    for i=1:length(key)
        hash = mod(hash*33+key(i),2^32-1); 
    end
    for i= 1:k
        hash = mod(hash*33+double(num2str(i)),2^32-1);
        out(i)= hash;
    end
end