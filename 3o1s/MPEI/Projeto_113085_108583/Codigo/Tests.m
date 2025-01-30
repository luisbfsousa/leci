data = [710; 706; 710; 600; 813; 900; 850; 810; 790; 610; 750; 407; 695; 625; 770; 880; 880; 548; 803; 610];

BloomSize = 200;
k = 3;
BloomFilterr = BloomFilter(BloomSize, k);
for i = 1:5
    BloomFilterr = BloomFilterr.addBloom(data(i));
end

Test = 710;
if BloomFilterr.inBloom(Test)
    fprintf("in the set\n");
else
    fprintf("not in the set\n");
end

BloomFilterr = BloomFilterr.remBloom(695);
if BloomFilterr.inBloom(695)
    fprintf("in the set\n");
else
    fprintf("not in the set\n");
end

subset1 = data(1:3);
subset2 = data(2:4);
numHashes = 10;
signature1 = MinHashs.minHash(subset1, numHashes);
signature2 = MinHashs.minHash(subset2, numHashes);
sim = MinHashs.similarity(signature1, signature2);
fprintf("similarity " + sim + "\n");

map = ["Bad", "Good", "Great"];
for i = 1:length(data)
    predicted_label = data(i);
    if predicted_label <= 600
        predicted_category = map(3);
    elseif predicted_label <= 800
        predicted_category = map(2);
    else
        predicted_category = map(1);
    end
    fprintf("CO2 %d -> %s\n", predicted_label, predicted_category);
end