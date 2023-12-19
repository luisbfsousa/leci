
import math
from tree_search import *

class Cidades(SearchDomain):
    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates
    def actions(self,city):
        actlist = []
        for (C1,C2,D) in self.connections:
            if (C1==city):
                actlist += [(C1,C2)]
            elif (C2==city):
               actlist += [(C2,C1)]
        return actlist 
    def result(self,city,action):
        (C1,C2) = action
        if C1==city:
            return C2
    def satisfies(self, city, goal_city):
        return goal_city==city
    def cost(self, city, action):
        C1, C2 = action
        if C1==city:
            for (x1, x2, d) in self.connections:
                if (x1, x2) == action or (x2, x1) == action:
                    return d
    def heuristic(self, city, goal_city):
        c1_x, c1_y = self.coordinates[city]
        c2_x, c2_y = self.coordinates[goal_city]
        return round(math.hypot(c1_x - c2_x, c1_y - c2_y))

