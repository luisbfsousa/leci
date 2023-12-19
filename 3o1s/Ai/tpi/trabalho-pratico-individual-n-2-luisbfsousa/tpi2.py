#encoding: utf8

# YOUR NAME: Luis Sousa
# YOUR NUMBER: 108583

# COLLEAGUES WITH WHOM YOU DISCUSSED THIS ASSIGNMENT (names, numbers):
# - Ricardo Dias 108598
# - Guilherme Santos 107961

from semantic_network import *
from constraintsearch import *

class MySN(SemanticNetwork):

    def __init__(self):
        SemanticNetwork.__init__(self)
        # ADD CODE HERE IF NEEDED
        self.assoc_stats = {}

    def query_local(self,user=None,e1=None,rel=None,e2=None):
        self.query_result = []
        if user is not None:
            dec = self.get_declarations(user)
        else:
            dec = []
            for user_name, user_data in self.declarations.items():
                for decl, values in user_data.items():
                    if rel == decl[1] or rel is None:
                        if values == e2 or decl[0] == e1 or (e1 is None and e2 is None):
                            values = [values] if isinstance(values, str) else values
                            for value in values:
                                if decl[1] == 'subtype':
                                    relation_instance = Subtype(decl[0], value)
                                elif decl[1] == 'member':
                                    relation_instance = Member(decl[0], value)
                                else:
                                    relation_instance = Association(decl[0], decl[1], value)
                                dec.append(Declaration(user_name, relation_instance))
        for decl in dec:
            self.query_result.append(decl)

        return self.query_result # Your code must leave the output in
                          # self.query_result, which is returned here

    def query(self,entity,assoc=None):
        local_declarations = self.query_local(e1=entity)
        self.query_result = [d for d in local_declarations if isinstance(d.relation, Association) and (assoc is None or d.relation.name == assoc)]
        parents = [d.relation.entity2 for d in local_declarations if not isinstance(d.relation, Association)]
        for parent in parents:
            self.query_result += self.query(parent, assoc)
        
        return self.query_result # Your code must leave the output in
                          # self.query_result, which is returned here


    def update_assoc_stats(self,assoc,user=None):
        if user is not None:
            if user in self.declarations:
                declarations = self.declarations[user]
            else:
                declarations = {}
        else:
            declarations = {k: v for user_declarations in self.declarations.values() for k, v in user_declarations.items()}

        e1_freq = {}
        e2_freq = {}
        total = 0

        for (e1_type, assoc_type), e2_type in declarations.items():
            if assoc_type == assoc:
                e1_freq[e1_type] = e1_freq.get(e1_type, 0) + 1
                e2_key = tuple(e2_type) if isinstance(e2_type, set) else (e2_type,)
                e2_freq[e2_key] = e2_freq.get(e2_key, 0) + 1
                total += 1 - len([t for t in (e1_type, *e2_key) if t == 'unknown'])

        total = max(1, total + len([t for t in e2_freq.keys() if 'unknown' in t]))
        e1_freq = {k: v / total for k, v in e1_freq.items()} if total > 0 else {}
        e2_freq = {k: v / total for k, v in e2_freq.items()} if total > 0 else {}
        
        def get_parent(entity1=None, entity2=None, targetuser = None):
            parents1 = [d.relation.entity2 for d in self.query_local(e1=entity1) if not isinstance(d.relation, Association) and (d.user == targetuser or targetuser == None)]
            parents2 = [d.relation.entity2 for d in self.query_local(e1=entity2) if not isinstance(d.relation, Association) and (d.user == targetuser or targetuser == None)]
            common_parents = set(parents1) & set(parents2)
            if not common_parents and entity1 == entity2:
                return entity1
            if not common_parents:
                return []
            above_parent = max(common_parents, key=lambda parent: parents1.index(parent))
            if entity1 == entity2:
                return above_parent
            parents_list = []
            parents_list.append(above_parent)
            highest_parent = None
            aux_parent = above_parent
            while highest_parent != aux_parent:
                aux_parent = highest_parent
                if aux_parent is None:
                    highest_parent = get_parent(entity1=above_parent, entity2=above_parent, targetuser=user)
                    if highest_parent not in parents_list:
                        parents_list.append(highest_parent)
                else:
                    highest_parent = get_parent(entity1=aux_parent, entity2=aux_parent, targetuser=user)
                    if highest_parent not in parents_list:
                        parents_list.append(highest_parent)
            return parents_list[::-1]
        
        e1_freq_parent = {}
        e1_freq_keys = list(e1_freq.keys())
        parents = get_parent(e1_freq_keys[0], e1_freq_keys[1])
        for key, freq in e1_freq.items():
            for parent in parents:
                e1_freq_parent[parent] = e1_freq_parent.get(parent, 0) + freq
        e2_freq_parent = {}
        e2_freq_keys = list(e2_freq.keys())
        parents = get_parent(e2_freq_keys[0], e2_freq_keys[1])
        for key, freq in e2_freq.items():
            for parent in parents:
                e2_freq_parent[parent] = e2_freq_parent.get(parent, 0) + freq

        self.assoc_stats[(assoc, user)] = (e1_freq_parent, e2_freq_parent)


class MyCS(ConstraintSearch):
    def __init__(self, domains, constraints):
        super().__init__(domains, constraints)
        self.solutions = []

    def search_all(self, domains=None, xpto=None):
        if domains is None:
            domains = self.domains
        if any(len(domains[v]) == 0 for v in domains):
            return self.solutions
        if all(len(domains[v]) == 1 for v in domains):
            solution = {v: domains[v][0] for v in domains}
            if solution not in self.solutions:
                self.solutions.append(solution)
        for v in domains:
            if len(domains[v]) > 1:
                for x in domains[v]:
                    domains_aux = dict(domains)
                    domains_aux[v] = [x]
                    edges_queue = [(v1, v2) for (v1, v2) in self.constraints if v2 == v]
                    while edges_queue:
                        (w1, w2) = edges_queue.pop(0)
                        values = [x1 for x1 in domains_aux[w1] if any(self.constraints[w1, w2](w1, x1, w2, x2) for x2 in domains_aux[w2])]
                        if len(values) < len(domains_aux[w1]):
                            domains_aux[w1] = values
                            if len(values) == 0:
                                break
                            edges_queue += [(u1, u2) for (u1, u2) in self.constraints if u2 == w1 and u1 != w2]
                    self.search_all(domains_aux)
        return self.solutions

    def update_solutions(self, domains):
        solution = {v: domains[v][0] for v in domains}
        if solution not in self.solutions:
            self.solutions.append(solution)

    def explore_domains(self, domains, v):
        for x in domains[v]:
            domains_aux = dict(domains)
            domains_aux[v] = [x]
            self.propagate(domains_aux, v)
            self.search_all(domains_aux)

    def propagate(self, domains, var):
        edges_queue = [(v1, v2) for (v1, v2) in self.constraints if v2 == var]
        while edges_queue:
            (v1, v2) = edges_queue.pop(0)
            self.update_values(domains, v1, v2)

    def update_values(self, domains, v1, v2):
        values = [x1 for x1 in domains[v1] if any(self.constraints[v1, v2](v1, x1, v2, x2) for x2 in domains[v2])]
        if len(values) < len(domains[v1]):
            domains[v1] = values
            if len(values) == 0:
                return
            self.update_edges_queue(domains, v1, v2)

    def update_edges_queue(self, domains, v1, v2):
        edges_queue = [(w1, w2) for (w1, w2) in self.constraints if w2 == v1 and w1 != v2]
        edges_queue += [(w1, w2) for (w1, w2) in self.constraints if w2 == v2 and w1 != v1]
        return edges_queue
        