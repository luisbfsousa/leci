function minhash = computeMinHash(interests, numHashes)
    interests = cellfun(@(x) char(x), interests, 'UniformOutput', false);
    interests = interests(~cellfun(@isempty, interests));
    hashFunctions = @(x, k) mod(sum(double(x)) * k, 997); 
    shingles = unique(lower(string(interests))); 
    minhash = arrayfun(@(k) min(arrayfun(@(s) hashFunctions(char(s), k), shingles)), 1:numHashes);
end
