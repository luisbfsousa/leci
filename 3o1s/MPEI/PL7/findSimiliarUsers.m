function similarUsers = findSimiliarUsers(userID, userIDs, ~, minhashMatrix, threshold)
    userIndex = find(userIDs == userID, 1);
    if isempty(userIndex)
        error('ID de usuário não encontrado.');
    end
    userSignature = minhashMatrix(userIndex, :);
    numUsers = size(minhashMatrix, 1);
    similarities = zeros(numUsers, 1);
    for i = 1:numUsers
        similarities(i) = computeSimilarity(userSignature, minhashMatrix(i, :));
    end
    similarUsers = find(similarities < threshold & userIDs ~= userID);
end