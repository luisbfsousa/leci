bn = [("C", [("A", True), ("B", True)], 0.95), ("C", [("A", True), ("B",
False)], 0.7), ("C", [("A", False), ("B", True)], 0.65), ("C", [("A",
False), ("B", False)], 0.1), ("D", [("C", True)], 0,77), ("D", [("C",
False)], 0,22), ("B", [], 0,33)]

def get_ancestors(bn, var):
    p = []

    for v in bn:
        if v[0] == var:
            p += v[1]

    if p == []:
        return []

    parents = []

    for x in p:
        parents += x[0]

    parents = list(set(parents))

    ancestors = parents

    for x in parents:
        ancestors = get_ancestors(bn, x) + ancestors

    return ancestors

    
