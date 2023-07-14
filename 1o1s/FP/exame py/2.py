def score(guess: str, secret: str):
    assert len(guess) == len(secret)
    pontuation: tuple = (0, 0)
    for i in range(len(guess)):
        letter = guess[i]
        if letter in secret:
            if secret[i] == letter:
                pontuation = (pontuation[0] - 1, pontuation[1])
            else:
                pontuation = (pontuation[0], pontuation[1] + 1)
    return pontuation