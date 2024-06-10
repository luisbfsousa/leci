CREATE TABLE [Conf_NaoEstudante](
    [referenciaBancaria][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    PRIMARY KEY ([Email])
)
GO

CREATE TABLE [Conf_Estudante](
    [Comprovativo][varchar](512) NOT NULL,
    [Email][varchar](512) NOT NULL,
    PRIMARY KEY ([Email])
)
GO

CREATE TABLE [Conf_ArtigosCientificos](
    [Titulo][varchar](512) NOT NULL,
    [NumeroRegisto][int] NOT NULL,
    [autor][varchar](512) NOT NULL,
    PRIMARY KEY ([NumeroRegisto])
)
GO

CREATE TABLE [Conf_Autor](
    [Email][varchar](512) NOT NULL,
    [Nome][varchar](512) NOT NULL,
    [Instituicao][varchar](512) NOT NULL,
    [ArtigosCientificos_NumeroRegisto][int] NOT NULL REFERENCES [Conf_ArtigosCientificos]([NumeroRegisto]),
    PRIMARY KEY([Email])
)
GO

CREATE TABLE [Conf_participante](
    [Nome][varchar](512) NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [DataInscricao][int] NOT NULL,
    [Email][varchar](512) NOT NULL,
    [Instituicao][varchar](512) NOT NULL,
    [NaoEstudante_Email][varchar](512) NOT NULL REFERENCES [Conf_NaoEstudante]([Email]),
    [Estudante_Email][varchar](512) NOT NULL REFERENCES [Conf_Estudante]([Email]),
    PRIMARY KEY ([Email])
)
GO

CREATE TABLE [Conf_Instituicao](
    [Nome][varchar](512) NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [Participante_Email][varchar](512) NOT NULL REFERENCES [Conf_participante]([Email]),
    [Autor_Email][varchar](512) NOT NULL REFERENCES [Conf_Autor]([Email]),
    PRIMARY KEY ([Nome])
)
GO