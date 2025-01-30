classdef MinHashs
    methods(Static)
        function minhash = minHash(values, num_hashes)
            hash_functions = @(x, k) mod(sum(double(num2str(x))) * k, 997);
            shingles = unique(string(values));
            minhash = arrayfun(@(k) min(arrayfun(@(s) hash_functions(s, k), shingles)), 1:num_hashes);
        end

        function similarity_val = similarity(minhash1, minhash2)
            similarity_val = sum(minhash1 == minhash2) / length(minhash1);
        end
    end
end
