#STUDENT NAME: Luis Barros Ferreira de Sousa
#STUDENT NUMBER: 108583

#DISCUSSED TPI-1 WITH: (names and numbers): Nuno Carvalho 97783 / Ricardo Dias 108598


from tree_search import *
import math

class OrderDelivery(SearchDomain):

    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates
        #self.initial = initial
        #self.goal = goal

    def actions(self,state):
        city = state[0]
        actlist = []
        for (C1,C2,D) in self.connections:
            if (C1==city):
                actlist += [(C1,C2)]
            elif (C2==city):
               actlist += [(C2,C1)]
        return actlist 

    def result(self,state,action):
        (C1,C2) = action
        removed = state[1][:]
        removed.discard(C2)
        if C1==state[0]:
            return C2, removed

    def satisfies(self, state, goal):
        city = state[0]
        return city == goal

    def cost(self, state, action):
        city = state[0]
        a1, a2 = action
        assert city == a1
        for (c1,c2, d) in self.connections:
            if((c1, c2) == action or (c2, c1) == action):
                return d

    def heuristic(self, state, goal):
        c1,c2 = state, goal
        if isinstance(c2, list):
            c2 = tuple(c2)
        (c1x, c1y) = self.coordinates[c1[0]]
        (c2x, c2y) = self.coordinates[c2[0]]
        distance = round(math.hypot(c1x-c2x, c1y-c2y))
        return distance


 
class MyNode(SearchNode):

    def __init__(self,state,parent,depth=0,cost=0,heuristic=0,eval=None):
        super().__init__(state,parent)
        self.depth = depth
        self.cost = cost
        self.heuristic = heuristic 
        self.eval = self.cost + self.heuristic
        self.child = []

class MyTree(SearchTree):

    def __init__(self,problem, strategy='breadth',maxsize=None):
        super().__init__(problem,strategy)
        self.initial = problem.initial
        self.goal = problem.goal
        heuristic = self.problem.domain.heuristic(self.problem.initial,self.problem.goal)
        root =  MyNode(self.problem.initial, None, 0, 0, heuristic, eval=heuristic)
        self.open_nodes = [root]
        self.total_nodes = [root]
        self.maxsize = maxsize


    def astar_add_to_open(self,lnewnodes):
        self.open_nodes.extend(lnewnodes)
        self.open_nodes.sort(key=lambda node: (node.eval, node.state[0]))
        

    def search2(self):
        while self.open_nodes:
            if not self.open_nodes:
                return None
            node = self.open_nodes.pop(0)
            if self.problem.goal_test(node.state):
                self.solution = node
                self.terminals = len(self.open_nodes) + 1
                return self.get_path(node)
            self.non_terminals += 1
            lnewnodes = []
            for a in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state, a)
                depth = node.depth + 1
                cost = node.cost + self.problem.domain.cost(node.state, a)
                heuristic = self.problem.domain.heuristic(newstate, self.problem.goal)
                if newstate not in self.get_path(node):
                    newnode = MyNode(newstate, node, depth, cost, heuristic, eval=cost + heuristic)
                    lnewnodes.append(newnode)
            #self.astar_add_to_open(lnewnodes)
            self.add_to_open(lnewnodes)
            #self.manage_memory()
        return None

    def manage_memory(self):
        if self.strategy == "A*" and self.maxsize != None:
            #print("teste")
            self.open_nodes.sort(key=lambda node: (node.eval, node.state[0]))
                
            delete = set()
            while (len(self.open_nodes) + self.non_terminals) >  self.maxsize:
                #print("teste")
                current_node = self.total_nodes.pop(0)
                if current_node in delete:
                    continue
                delete.add(current_node)
                parent = current_node.parent
                if parent and any(child in delete for child in parent.child):
                    for sibling in parent.child:
                            if sibling in delete:
                                delete.remove(sibling)
                                self.open_nodes.append(sibling)
                            parent.eval = min(child.eval for child in parent.child)
                        
            self.open_nodes = [node for node in self.open_nodes if node not in delete]     

    # if needed, auxiliary methods can be added here

def orderdelivery_search(domain,city,targetcities,strategy='breadth',maxsize=None):  
    problem = SearchProblem(domain, (city,targetcities), (targetcities,city))
    search_tree = MyTree(problem, strategy, maxsize)
    route = search_tree.search2()
    return(search_tree,route) if route is not None else None


# If needed, auxiliary functions can be added here
