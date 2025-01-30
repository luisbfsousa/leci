function similarity = computeSimilarity(minhash1, minhash2)
    similarity = sum(minhash1 == minhash2) / length(minhash1);
end