def morePop(countries: list, N: int):
    countries2: list = []

    for country in countries:
        if country[3] > n:
            countries2.append((country[2], country[0]))

    return countries2