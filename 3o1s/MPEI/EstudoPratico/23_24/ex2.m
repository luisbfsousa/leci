m = 300;
k = 1;

n = round((m * k) / log(2));

B = bloomFilter_initializer(n);
n_keys = 300;

alphabet = ['a':'z'];
imin = 5;
imax = 8;

keys = generate_keys_unif(n_keys,imin,imax,alphabet);

for i = 1:n_keys
    B = bloomFilter_insertion(B,keys{i},k);
end

count = 0;

for j = 1:200   % Ir buscar as 10000 mil palavras que são diferentes
    if bloomFilter_verification(B,keys{j},k) == true
        count = count + 1;
    end
end
prob_false_positives = count / n_keys;

fprintf("Em média existem %.4f falsos positivos\n",prob_false_positives)