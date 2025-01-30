classdef BloomFilter
    properties
        filter
        counts
        hash_functions
        k
        n
    end
    
    methods
        function obj = BloomFilter(n, k)
            obj.filter = zeros(1, n);
            obj.counts = zeros(1, n);
            obj.hash_functions = @(value, seed) mod(sum(double(char(value))) * seed, n) + 1;
            obj.k = k;
            obj.n = n;
        end
        
        function obj = addBloom(obj, value)
            for i = 1:obj.k
                idx = obj.hash_functions(value, i);
                obj.filter(idx) = 1;
                obj.counts(idx) = obj.counts(idx) + 1;
            end
        end
        
        function is_present = inBloom(obj, value)
            is_present = true;
            for i = 1:obj.k
                idx = obj.hash_functions(value, i);
                if obj.filter(idx) == 0
                    is_present = false;
                    break;
                end
            end
        end
        
        function obj = remBloom(obj, value)
            for i = 1:obj.k
                idx = obj.hash_functions(value, i);
                if obj.counts(idx) > 0
                    obj.counts(idx) = obj.counts(idx) - 1;
                    if obj.counts(idx) == 0
                        obj.filter(idx) = 0;
                    end
                end
            end
        end
    end
end
