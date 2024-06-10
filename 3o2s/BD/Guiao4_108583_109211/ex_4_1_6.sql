CREATE TABLE [ATL_Atividade](
    [Identificador][int] NOT NULL,
    [Designacao][varchar](512) NOT NULL,
    [Custo][int] NOT NULL,
    PRIMARY KEY ([Identificador])
)
GO

CREATE TABLE [ATL_Professor](
    [Nome][varchar](512) NOT NULL,
    [CC][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    [telefone][int] NOT NULL,
    [nFuncionario][int] NOT NULL,
    PRIMARY KEY ([nFuncionario])
)
GO

CREATE TABLE [ATL_EncarregadoEducacao](
    [Nome][varchar](512) NOT NULL,
    [telefone][int] NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [DataNascimentp][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    [CC][int] NOT NULL,
    PRIMARY KEY ([CC])
)
GO

CREATE TABLE [ATL_PessoaAutorizada](
    [Nome][varchar](512) NOT NULL,
    [telefone][int] NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [DataNascimentp][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    [CC][int] NOT NULL,
    PRIMARY KEY ([CC])
)
GO

CREATE TABLE [ATL_Aluno](
    [Nome][varchar](512) NOT NULL,
    [CC][int] NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [DataNascimentp][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    [EntregaLevantamento_EncarregadoEducacao][int] NOT NULL REFERENCES [ATL_EncarregadoEducacao]([CC]), 
    [EntregaLevantamento_PessoaAutorizada][int] NOT NULL REFERENCES  [ATL_PessoaAutorizada]([CC]),
    PRIMARY KEY ([CC])
)
GO

CREATE TABLE [ATL_Turma](
    [AnoLetivo][int] NOT NULL,
    [Identificador][int] NOT NULL,
    [Designcacao][int] NOT NULL,
    [nMaximoAlunos][int] NOT NULL,
    [Professor_nFuncionario][int] NOT NULL REFERENCES [ATL_Professor]([nFuncionario]),
    [Atividade_Identificador][int] NOT NULL REFERENCES [ATL_Atividade]([Identificador]),
    [Aluno_CC][int] NOT NULL REFERENCES [ATL_Aluno]([CC]),
    PRIMARY KEY ([Identificador])
)
GO