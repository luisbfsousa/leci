
from tpi1 import *
from cidades import *

city_connections = [ # Ligacoes por estrada
            ('Coimbra', 'Leiria', 73),
            ('Aveiro', 'Agueda', 35),
            ('Porto', 'Agueda', 79),
            ('Agueda', 'Coimbra', 45),
            ('Viseu', 'Agueda', 78),
            ('Aveiro', 'Porto', 78),
            ('Aveiro', 'Coimbra', 65),
            ('Figueira', 'Aveiro', 77),
            ('Braga', 'Porto', 57),
            ('Viseu', 'Guarda', 75),
            ('Viseu', 'Coimbra', 91),
            ('Figueira', 'Coimbra', 52),
            ('Leiria', 'Castelo Branco', 169),
            ('Figueira', 'Leiria', 62),
            ('Leiria', 'Santarem', 78),
            ('Santarem', 'Lisboa', 82),
            ('Santarem', 'Castelo Branco', 160),
            ('Castelo Branco', 'Viseu', 174),
            ('Santarem', 'Evora', 122),
            ('Lisboa', 'Evora', 132),
            ('Evora', 'Beja', 105),
            ('Lisboa', 'Beja', 178),
            ('Faro', 'Beja', 147),
            ('Braga', 'Guimaraes', 25),
            ('Porto', 'Guimaraes', 44),
            ('Guarda', 'Covilha', 46),
            ('Viseu', 'Covilha', 57),
            ('Castelo Branco', 'Covilha', 62),
            ('Guarda', 'Castelo Branco', 96),
            ('Lamego','Guimaraes', 88),
            ('Lamego','Viseu', 47),
            ('Lamego','Guarda', 64),
            ('Portalegre','Castelo Branco', 64),
            ('Portalegre','Santarem', 157),
            ('Portalegre','Evora', 194) 
]

city_coordinates = {  # City coordinates
             'Aveiro': (41,215),
             'Figueira': ( 24, 161),
             'Coimbra': ( 60, 167),
             'Agueda': ( 58, 208),
             'Viseu': ( 104, 217),
             'Braga': ( 61, 317),
             'Porto': ( 45, 272),
             'Lisboa': ( 0, 0),
             'Santarem': ( 38, 59),
             'Leiria': ( 28, 115),
             'Castelo Branco': ( 140, 124),
             'Guarda': ( 159, 204),
             'Evora': (120, -10),
             'Beja': (125, -110),
             'Faro': (120, -250),
             'Guimaraes': ( 71, 300),
             'Covilha': ( 130, 175),
             'Lamego' : (125,250),
             'Portalegre': (130,170) 
}


cidades_portugal = Cidades(city_connections,city_coordinates)

p = SearchProblem(cidades_portugal,'Braga','Faro')

t = MyTree(p,'depth')
print('(depth)',t.search2())
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('solution : depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
n = t.open_nodes[-1]
print('last leaf: depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')


t = MyTree(p,'A*')
print('(A*)',t.search2())
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('solution : depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
n = t.open_nodes[-1]
print('last leaf: depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

t = MyTree(p,'A*',180)
print('(A*, maxsize=180)',t.search2())
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('solution : depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
n = t.open_nodes[-1]
print('last leaf: depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

# -----

p = SearchProblem(cidades_portugal,'Guimaraes','Faro')

t = MyTree(p,'A*',160)
print('(A*, maxsize=160)',t.search2())
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('solution : depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
n = t.open_nodes[-1]
print('last leaf: depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

# -----

p = SearchProblem(cidades_portugal,'Guimaraes','Beja')

t = MyTree(p,'A*',150)
print('(A*, maxsize=150)',t.search2())
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('solution : depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
n = t.open_nodes[-1]
print('last leaf: depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')




# -----


od_portugal = OrderDelivery(city_connections,city_coordinates)

(t,path) = orderdelivery_search(od_portugal,'Braga',['Lamego','Coimbra','Covilha','Lisboa'],'depth')
print('path:',path)
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

(t,path) = orderdelivery_search(od_portugal,'Braga',['Lamego','Coimbra','Covilha'])
print('(breadth) path:',path)
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

(t,path) = orderdelivery_search(od_portugal,'Lisboa',['Faro','Evora','Beja','Portalegre'])
print('(breadth) path:',path)
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

(t,path) = orderdelivery_search(od_portugal,'Lisboa',['Evora','Beja','Portalegre'])
print('(breadth) path:',path)
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')

(t,path) = orderdelivery_search(od_portugal,'Lisboa',['Evora','Beja','Portalegre'],'A*')
print('(A*) path:',path)
print('non_terminals=',t.non_terminals,'terminals=',t.terminals)
n = t.solution
print('depth=',n.depth,'cost=',n.cost,'heuristic=',n.heuristic,'eval=',n.eval)
print('\n')




