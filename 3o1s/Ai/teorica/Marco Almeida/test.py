def f(x, y, z):
    if y == []:
        return [x]

    if z(x, y[0]):
        return [x] + y

    return [y[0]] + f(x, y[1:], z)


def h(x, y, z):
    if x == []:
        return y[:]

    if y == []:
        return x[:]

    if z(x[0]) < z(y[0]):
        return [x[0]] + h(x[1:], y, z)

    return [y[0]] + h(x, y[1:], z)

#print(h([-6, 5, 43, 1001], [-5, 32, -8, 1000, 3000, 0, 4000], lambda x: x**2))


# Programe uma funçao que, dada uma lista de tuplos representando todas as probabilidades condicionadas de uma rede, e dada ainda uma determinada variavel da rede, retorna uma lista com todas as variaveis ascendentes dessa variavel.
# portanto com esta variavel bn, devemos ter ['A','B','C']
bn = [("C", [("A", True), ("B", True)], 0.95), ("C", [('A', True), ("B", False)], 0.7), ("C", [("A", False), ("B", True)], 0.65), ("C", [("A", False), ("B", False)], 0.1), ("D", [("C", True)], 0.77), ("D", [("C", False)], 0.22), ("B", [], 0.33)]


def get_ancestors(bn, event):
    ancestors = []
    for i in bn:
        if i[0] == event:
            for j in i[1]:
                ancestors.append(j[0])
                ancestors.extend(get_ancestors(bn, j[0]))
    return list(set(ancestors))


# print(get_ancestors(bn, "D"))

def g(x, y):
    if y == []:
        return (0, [])

    (z, t) = g(x, y[1:])

    if y[0] == x:
        return (z + 1, t)

    return (z, y[:1] + t)


print(g(4, [-1, 0, -3, 4, 2, 1]))


def provar(lst, p):
    '''lst é uma lista que contem listas.
    Listas com apenas um elemento sao proposiçoes, i.e factos.
    Listas com Mais de um elemento sao implicações, e.g [c, a, b] quer dizer que a E b implica c.
    Logo, provar([['a'],['b'], ['c', 'a', 'b']], 'd') -> True'''

    # nsei se esta resoluçao está totalmente correta.
    known_p = []
    for e in lst:
        if len(e) == 1:
            known_p.append(e[0])

    for e in lst:
        if e[0] == p:
            if all([x in known_p for x in e[1:]]):
                return True
            if not all([x in known_p for x in e[1:]]):  # esta condição nsei se está bem, inspirei
                return True                             # me na tabela de verdade de implicaçao
    return False


print(provar([['a'], ['b'], ['c', 'a', 'b']], 'd'))
