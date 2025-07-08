## Em HTML, os marcadores … (d I guess)
a. permitem definir elementos

b. permitem definir atributos

c. permitem definir os valores de um elemento

d. permitem definir elementos e atributos

## Em HTML, o elemento \<link\> … (a)
a. deve aparecer dentro do elemento \<head\>

b. permite criar ligações (links) clicáveis para outros documentos HTML

c. não existe

d. permite importar o conteúdo de outros documentos HTML

## A definição das instruções CSS na forma “In-line” deve ser feita … (b)
a. feita como valores do elemento \<style\>

b. feita como valores do atributo style

c. feita na parte \<head\> da página web

d. num documento CSS externo à página web


## A plataforma Bootstrap 5 priveligia a abordagem RWD, cujo propósito é … (d)

a. não ser necessário o uso de CSS na personalização das páginas web

b. substituir os elementos HTML por propriedades CSS

c. usar Javascript para personalizar os elementos de HTML, substituindo o CSS

d. os sites ajustarem-se automaticamente a diferentes dispositivos de visualização

## Em HTML, um elemento … (c)
a. é definido pelos seus atributos

b. sem conteúdo, não possui atributos

c. pode ser vazio

d. é o mesmo que um marcador


## Em HTML, o elemento \<meta\> permite … (d)
a. estabelecer uma ligação para um blog

b. referenciar outra página HTML

c. estabelecer uma ligação para o futuro metaverse, ainda em construção

d. informar sobre propriedades da página


## A Bootstrap 5 permite criar … (c de cis)
a. menus sem necessitar de qualquer conceito de CSS

b. janelas modal que têm por objetivo exibirem as últimas novidades

c. tabelas responsivas que ajustam o seu tamanho ao tamanho da página

d. tabelas responsivas que ajustam o tamanho do seu conteúdo à dimensão da tabela

## Para que a Bootstrap 5 reconheça corretamente a página onde atua, esta deve: (b de buceta)
a. fazer uso de um contentor de largura igual à da janela de visualização

b. indicar o nível de zoom, que deve ser usado quando é carregada pelo browser

c. indicar a língua inglesa como a língua do seu conteúdo

d. indicar o seu título e autor

("mana isto e serio")


## A Bootstrap 5 usa um sistema em grelha … (b de bitch)
a. que divide uma página web em 12 colunas e 5 linhas

b. para posicionar elementos numa página web

c. que cria uma tabela com 12 linhas e 12 colunas

d. para substituir as tabelas em HTML


## Em CSS, as pseudo-classes … (c de capeta)
a. usam nomes iguais às das classes, com exceção do uso do caráter ":"

b. são obrigatoriamente definidas em documentos CSS externos

c. aplicam formatação a elementos que se encontram num estado específico

d. aplicam formatação a grupos de elementos


## Em CSS, os elementos HTML são considerados caixas … (d de daddy)
a. com 4 dimensões – comprimento, largura, altura e profundidade

b. em que o margin é a distância entre o content e o border

c. em que o border define o bordo à volta do margin

d. em que o padding é a distância entre o content e o border

###########################################################################

## Em CSS e no Tipo Layout Exterior do Modelo de Caixas, os elementos da categoria … (d de dedada)
a. Block respeitam apenas as dimensões da caixa Margin

b. Inline não respeitam as dimensões da caixa Content

c. Inline respeitam todas as dimensões de todas as caixas

d. Block não respeitam as dimensões verticais das caixas

###########################################################################
## Ex13

<!DOCTYPE html>
<html lang="en">
<head>
  <title>My Travels</title>
  <meta charset="utf-8">
  <Resposta 1 Pergunta 13
 name="viewport" content="width=device-width, initial-scale=1">
  <Resposta 2 Pergunta 13
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <Resposta 3 Pergunta 13
 src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"><Resposta 4 Pergunta 13
>
</head>
<body>
    <h3 align="center">My Travel Cities</h3>
    <div id="imgslide" class="carousel slide" data-bs-ride="Resposta 5 Pergunta 13
 
" style="width:500px; margin: auto;">
        <div Resposta 6 Pergunta 13
="carousel-inner">
          <div class="carousel-item active" data-bs-interval="2000">
            <img src="madrid.jpg" class="d-block mx-auto" style="width: 500px; height: 300px">
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="barcelona.jpg" class="d-block mx-auto" style="width: 500px; height: 300px">
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="sevilla.jpg" class="d-block mx-auto" style="width: 500px; height: 300px">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="Resposta 7 Pergunta 13
 
" data-bs-slide="Resposta 8 Pergunta 13
 
">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="Resposta 9 Pergunta 13
 
" data-bs-slide="Resposta 10 Pergunta 13
 
">
          <span class="carousel-control-next-icon"></span>
        </button>
      </header>
</body>
</html>
 
 meta; link; script; /script; carousel; class; #imgslide; prev; #imgslide; next

###########################################################################

## Ex14

 <!DOCTYPE html>
<html>
<head>
<Resposta 1 Pergunta 14
>
    Resposta 2 Pergunta 14
.level1 {
        Resposta 3 Pergunta 14
 
: 200px;
        list-style: none;
        Resposta 4 Pergunta 14
 
: 15px 20px 15px 20px;
        Resposta 5 Pergunta 14
 
: 2px solid blue;
    }
    ul > Resposta 6 Pergunta 14
 {list-style-type: circle;}
    ul Resposta 7 Pergunta 14
 {text-decoration-line: none; color: green;}
    .Resposta 8 Pergunta 14
 {color: blue; font-weight: bold;}
<Resposta 9 Pergunta 14
>
</head>
<body>
<h3>Produtos Alimentares</h3>
<ul class="Resposta 10 Pergunta 14
">
    <li class="active">Bebida</li>
    <ul>
        <li>Refrigerante</li>
        <li>Vinho</li>
        <li>Cerveja</li>
    </ul>
    <li><a href="legumes.htm">Legumes</a></li>
    <li><a href="cereais.html">Cereais</a></li>
</ul>
</body>
</html>

style; ul; width; padding; border; li; a; active; /style; level1

###########################################################################

## EX15
<table Resposta 1 Pergunta 15
 
="3" cellpadding="5" cellspacing="Resposta 2 Pergunta 15
">
  <Resposta 3 Pergunta 15
>Notebook<Resposta 4 Pergunta 15
>
  <tr bgcolor="cyan">
    <th width="30%">Nome</th>
    <td width="70%" align="center" Resposta 5 Pergunta 15
="4">ASUS E510MA</td>
  </tr>
  <tr>
    <td Resposta 6 Pergunta 15
="2" bgcolor="#6495ED" align="center"><Resposta 7 Pergunta 15
>Caraterísticas<Resposta 8 Pergunta 15
></td>
    <th>RAM</th><th>Disco</th><th>Monitor</th><th>Imagem</th>
  </tr>
  <tr align="center">
    <td>4GB</td>
    <td>128GB</td>
    <td>15.6" IPS FHD</td>
    <td\><Resposta 9 Pergunta 15
 Resposta 10 Pergunta 15
 
="asus-e510ma.jpg" width="150px"></td>
  </tr>
</table>

border; 0; caption: /caption; colspan; colspan; b; /b; img; scr

###########################################################################

<center>
  <Resposta 1 Pergunta 16>Sintel Movie Trailer<Resposta 2 Pergunta 16>
  <Resposta 3 Pergunta 16 controls>
  <Resposta 4 Pergunta 16 src="sintel.webm" type="video/webm" />
    <Resposta 5 Pergunta 16 Resposta 6 Pergunta 16 ="English" Resposta 7 Pergunta 16
 ="subtitles" Resposta 8 Pergunta 16
 ="en" Resposta 9 Pergunta 16
 ="sintel-en.vtt" />
  <Resposta 10 Pergunta 16>
</center>

h3; /h3; video; source; track; label; kind; srclang; scr; /video

###########################################################################