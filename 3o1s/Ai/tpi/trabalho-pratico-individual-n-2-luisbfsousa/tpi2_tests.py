
from itertools import product

from tpi2 import *

z = MySN()

z.insert(Declaration('Descartes',Subtype('human','mammal')))
z.insert(Declaration('Descartes',Member('Socrates','man')))
z.insert(Declaration('Descartes',Member('Aristoteles','man')))
z.insert(Declaration('Descartes',Member('Plato','man')))
z.insert(Declaration('Descartes',Association('Socrates','teacher','Philosophy')))
z.insert(Declaration('Descartes',Association('Socrates','teacher','Mathematics')))
z.insert(Declaration('Descartes',Association('Plato','teacher','Philosophy')))

z.insert(Declaration('Darwin',Subtype('man','human')))
z.insert(Declaration('Darwin',Association('mammal','breastfeed','Yes')))
z.insert(Declaration('Darwin',Association('man','likes','meat')))
z.insert(Declaration('Darwin',Subtype('mammal','vertebrate')))

z.insert(Declaration('Yesao',Association('Socrates','teacher','Mathematics')))
z.insert(Declaration('Yesao',Association('Plato','teacher','Philosophy')))

z.insert(Declaration('Damasio', Association('philosopher','likes','Philosophy')))

print(z,'\n')

z.query_local()
z.show_query_result()
print()

print('subtypes of man:',z.query_local(rel='subtype',e2='man'),'\n')
print('instances of man:',z.query_local(rel='member',e2='man'),'\n')

z.query_local(e1='Socrates')
z.show_query_result()
print()

print('likes:',z.query_local(rel='likes'),'\n')

print('Socrates-likes:',z.query('Socrates','likes'),'\n')

print('Socrates:',z.query('Socrates'),'\n')

print('Socrates-subtype:',z.query('Socrates','subtype'),'\n')

z.update_assoc_stats('teacher','Descartes')
print(z.assoc_stats,'\n')

z.insert(Declaration('Descartes',Member('Philosophy','discipline')))
z.update_assoc_stats('teacher','Descartes')
print(z.assoc_stats,'\n')


z.insert(Declaration('Descartes',Subtype('man','human')))
z.update_assoc_stats('teacher','Descartes')
print(z.assoc_stats,'\n')

z.insert(Declaration('Descartes',Member('Elvira','woman')))
z.insert(Declaration('Descartes',Association('Elvira','teacher','Philosophy')))
z.update_assoc_stats('teacher','Descartes')
print(z.assoc_stats,'\n')

z.insert(Declaration('Descartes',Subtype('woman','human')))
print('Elvira:',z.query('Elvira','breastfeed'),'\n')

z.update_assoc_stats('teacher','Descartes')
print(z.assoc_stats,'\n')

z.update_assoc_stats('teacher')
print(z.assoc_stats,'\n')

z.insert(Declaration('Darwin',AssocOne('Mary','hasMother','Elvira')))
z.insert(Declaration('Darwin',AssocOne('Elvira','hasMother','Eva')))

print('hasMother:',z.query_local(rel='hasMother'))

z.update_assoc_stats('hasMother','Darwin')
print(z.assoc_stats['hasMother','Darwin'],'\n')
z.update_assoc_stats('hasMother')
print(z.assoc_stats['hasMother',None],'\n')

z.insert(Declaration('Darwin',AssocOne('human','hasMother','woman')))
z.update_assoc_stats('hasMother',None)
print(z.assoc_stats['hasMother',None],'\n')



# ---------------------------------------------------------------------

#             T W O
#           + T W O
#         ----------       ( problem formulation
#           F O U R          developed in TP classes)
 
variables = [ 'T','W','O','F','U','R' ]

# domains
# -------

digits = list(range(10))

domains = { x:digits for x in variables if x!='F' }
domains|= { x:[0,1] for x in ['F','X1','X2'] }

domains['orx1'] = product(domains['O'],domains['R'],domains['X1'])
domains['orx1'] = [ t for t in domains['orx1'] if 2*t[0] == t[1] + 10*t[2] ]

domains['wx1ux2']=product(domains['W'],domains['X1'],domains['U'],domains['X2'])
domains['wx1ux2']=[t for t in domains['wx1ux2'] if 2*t[0]+t[1]==t[2]+10*t[3]]

domains['tx2of'] = product(domains['T'],domains['X2'],domains['O'],domains['F'])
domains['tx2of'] = [t for t in domains['tx2of'] if 2*t[0]+t[1] == t[2]+10*t[3]]

# constraints
# ------------

constraints = { (v1,v2):(lambda v1,x1,v2,x2: x1!=x2)
                for v1 in variables for v2 in variables if v1!=v2 }

constraint0 = lambda vt,xt,v,x: xt[0]==x
constraint1 = lambda vt,xt,v,x: xt[1]==x
constraint2 = lambda vt,xt,v,x: xt[2]==x
constraint3 = lambda vt,xt,v,x: xt[3]==x

extra = {}

extra['orx1','O'] = constraint0
extra['orx1','R'] = constraint1
extra['orx1','X1'] = constraint2

extra['wx1ux2','W'] = constraint0
extra['wx1ux2','X1'] = constraint1
extra['wx1ux2','U'] = constraint2
extra['wx1ux2','X2'] = constraint3

extra['tx2of','T'] = constraint0
extra['tx2of','X2'] = constraint1
extra['tx2of','O'] = constraint2
extra['tx2of','F'] = constraint3

constraints |= extra

def invert_constraint(constraints,e):
    return lambda w2,x2,w1,x1:constraints[e](w1,x1,w2,x2)

constraints |= { (v2,v1):invert_constraint(extra,(v1,v2)) for v1,v2 in extra }


print(domains)

print(constraints)

cs = MyCS(domains,constraints)

import time
t0 = time.process_time()
solutions = cs.search_all()
print('only ',time.process_time()-t0,'seconds :-)')

print(solutions)
for s in solutions:
    print({v:s[v] for v in variables})
print(len(solutions))