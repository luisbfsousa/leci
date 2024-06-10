/*CREATE DATABASE BD2024
COLLATE SQL_Latinl_General_CP1_CI_AI
GO

USE BD2024
GO
*/

CREATE TABLE[Stock_tipoPagamento](
    [Codigo][int] NOT NULL,
    [Descricao][varchar](512) NOT NULL,
    PRIMARY KEY ([Codigo])
)
GO

CREATE TABLE[Stock_tipoFornecedor](
    [Codigo][int] NOT NULL,
    [Descricao][varchar](512) NOT NULL,
    PRIMARY KEY ([Codigo])
)
GO

CREATE TABLE[Stock_Fornecedor](
    [NIF][int] NOT NULL,
    [Endereco][varchar](512) NOT NULL,
    [Fax][int] NOT NULL,
    [Nome][varchar](512) NOT NULL,
    [TipoPagamento_ID][int] NOT NULL REFERENCES [Stock_tipoPagamento]([Codigo]),
    [TipoFornecedor_ID][int] NOT NULL REFERENCES [Stock_tipoFornecedor]([Codigo]),
    PRIMARY KEY ([NIF])
)
GO

CREATE TABLE[Stock_ProdutoEncomenda](
    [ID][int] NOT NULL,
    [Quantidade][int] NOT NULL,
    [Encomenda][varchar](512) NOT NULL,
    [Produto][int]  NOT NULL,
    PRIMARY KEY ([ID])
)
GO

CREATE TABLE[Stock_Encomenda](
    [Numero][int] NOT NULL,
    [Data][int] NOT NULL,
    [FornecedorNIF][int] NOT NULL REFERENCES [Stock_Fornecedor]([NIF]),
    [ProdutoEncomenda_ID][int] NOT NULL REFERENCES [Stock_ProdutoEncomenda]([ID]),
    PRIMARY KEY ([Numero])
)
GO

CREATE TABLE[Stock_Produto](
    [Nome][varchar](512) NOT NULL,
    [Stock][int] NOT NULL,
    [IVA][int] NOT NULL,
    [Codigo][int] NOT NULL,
    [Preco][int] NOT NULL,
    [ProdutoEncomenda_ID][int] NOT NULL REFERENCES [Stock_ProdutoEncomenda]([ID]),
    PRIMARY KEY ([Codigo])
)
GO