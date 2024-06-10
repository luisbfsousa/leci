# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
(π Pname,Pnumber (project) ⨝ Pnumber = Pno works_on) ⨝ Essn=Ssn (π Fname,Lname,Ssn (employee))
```


### *b)* 

```
π Fname,Minit,Lname,employee.Ssn (employee ⨝ employee.Super_ssn = supSSN.Ssn ρ supSSN π Ssn σ (Fname = 'Carlos' ∧ Minit = 'D' ∧ Lname = 'Gomes') (employee))
```


### *c)* 

```
π Pname,totalHours (project ⨝ Pnumber = Pno (γ Pno;sum(Hours)->totalHours (works_on)))
```


### *d)* 

```
π Fname, Minit, Lname (σ (Dno=3 ∧ Hours>20 ∧ Pname = 'Aveiro Digital') 
(project⨝Pnumber=Pno (employee⨝Ssn=Essn works_on)))
```


### *e)* 

```
π Fname,Minit,Lname (σ Hours=null (works_on⟗Essn=Ssn employee))
```


### *f)* 

```
π Fname, Lname, Sex, Salary(τ employee.Dno employee ⨝ employee.Dno=department.Dnumber department)
```


### *g)* 

```
π employee.Fname, employee.Minit, employee.Lname, employee.Ssn employee ⨝ Ssn=Essn σ filhos > 2 γ Essn; count(Essn) -> filhos dependent
```


### *h)* 

```
TEMP = σ Essn=null (dependent ⟖Essn=Ssn employee) π Fname,Minit,Lname (department ⨝Mgr_ssn=Ssn TEMP)
```


### *i)* 

```
TEMP = σ Dlocation!='Aveiro' ∧ Plocation='Aveiro' (project ⨝ Dnum=Dnumber dept_location) π Fname,Minit,Lname,Address (employee ⨝ Dno=Dnum TEMP)
```


## ​Problema 5.2

### *a)*

```
σ (numero=null) (encomenda⟗fornecedor=nif fornecedor)
```

### *b)* 

```
p_avg = ρprod_avg γ codProd; avg(unidades) -> avg_units (item) π nome, avg_units (produto⨝codigo=codProd p_avg)
```


### *c)* 

```
γ; avg(unitsByEnc) -> media_produtos_por_encomenda (γ numero; COUNT(codProd) -> unitsByEnc (encomenda⨝numero=numEnc item))
```


### *d)* 

```
γ fornecedor.nome, produto.nome; SUM(item.unidades) -> provided_units (produto⨝codigo=item.codProd (fornecedor⨝nif=fornecedor (encomenda⨝numero=numEnc item)))
```


## ​Problema 5.3

### *a)*

```
σ (numPresc=null) (paciente⟗prescricao)
```

### *b)* 

```
γ especialidade; COUNT(numPresc) -> prescricoes (medico⨝numSNS=numMedico prescricao)
```


### *c)* 

```
γ farmacia; COUNT(numPresc) -> prescricoes (σ (farmacia≠null) (prescricao))
```


### *d)* 

```
π nome (σ numPresc=null (presc_farmaco⟗nomeFarmaco=nome farmaco))
```

### *e)* 

```
γ farmacia, farmaceutica.nome ; COUNT(numPresc) -> sold (farmaceutica⨝numReg=numRegFarm (presc_farmaco⨝(σ farmacia≠null prescricao)))
```

### *f)* 

```
pat = γ numUtente; COUNT(numMedico) -> dif_doctors (π numUtente,numMedico prescricao) π paciente.nome (paciente⨝(σ dif_doctors > 1 pat))
```
