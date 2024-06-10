# BD: Guião 7


## ​7.2 
 
### *a)*

```
A relação está na forma 1FN porque tem Dependências Parciais e Dependências Transitivas.

Dependencias Parciais:
NomeAutor -> AfiliaçãoAutor

Dependências Transistivas:
Editor -> EndereçoEditor
TipoLivro, NPaginas -> Preço

```

### *b)* 

```
Livro(<u>Titulo_Livro</u>, <u>Nome_Autor</u>, Afiliacao_Autor, TipoLivro, Preco, NoPaginas, Editor, EnderecoEditor, AnoPublicacao)

<u>Titulo_Livro</u>,<u>Nome_Autor</u> -> TipoLivro,Preco,Npaginas,Editor,EnderecoEditor,AnoPublicacao
<u>TituloLivro</u> -> Preco
<u>NomeAutor</u> -> AfiliacaoAutor
Editor -> EnderecoEditor

2FN:    
    R1 = <u>Titulo_Livro</u>,<u>Nome_Autor</u>,TipoLivro,Npaginas,Editor,EnderecoEditor,AnoPublicacao
    R2 = <u>TituloLivro</u>,Preco

3FN:    
    R1 = <u>TituloLivro</u>,<u>Nome_Autor</u>,TipoLivro,NPaginas,Editor,AnoPublicacao
    R2 = <u>TituloLivro</u>,Preco
    R3 = <u>TipoLivro</u>,<u>Npaginas</u>,Preco
    R4 = <u>Editor</u>,EnderecoEditor
```




## ​7.3
 
### *a)*

```
<u>A</u><u>B</u> -> C
<u>A</u> -> D,E
<u>B</u> -> F
F -> G,H
D -> I,J 

CHAVE = <u>A</u>,<u>B</u>

``` 


### *b)* 

```
2FN:
    R1 =    <u>A</u>,<u>B</u>,C
    R2 =    <u>A</u>,D,E,I,J
    R3 =    <u>B</u>,F,G,H

```


### *c)* 

```
3FN:
    R1  =   <u>A</u>,<u>B</u>,C
    R2  =   <u>A</u>,D,E
    R3  =   <u>B</u>,F
    R4  =   <u>F</u>,G,H
    R5  =   <u>D</u>,I,J
```


## ​7.4
 
### *a)*

```
<u>A</u>,<u>B</u> -> C,D,E
D -> E
C -> A

CHAVE = <u>B</u>,<u>C</u>
```


### *b)* 

```
3FN:
    R1 = <u>A</u>,<u>B</u>,C,D,E
    R2 = <u>D</u>,E
```


### *c)* 

```
BCNF:
    R1=<u>C</u>,<u>B</u>,D
    R2=<u>C</u>,A
    R3=<u>D</u>,E
```



## ​7.5
 
### *a)*

```
<u>A</u>,<u>B</u> -> C,D,E
<u>A</u> -> C
C -> D

CHAVE = <u>A</u>,<u>B</u>
```

### *b)* 

```
2FN:    
    R1 = <u>A</u>,<u>B</u> -> D,E
    R2 = <u>A</u> -> C
```


### *c)* 

```
3FN:
    R1 = <u>A</u>,B,E
    R2 = <u>A</u>, C
    R3 = <u>C</u>,D
```

### *d)* 

```
BCFN:
    R1 = <u>A</u>,B,E
    R2 = <u>A</u>,C
    R3 = <u>C</u>,D
```
