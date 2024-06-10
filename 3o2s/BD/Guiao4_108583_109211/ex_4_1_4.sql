CREATE TABLE [SNS_PrescricaoNacional](
    [Nome][varchar](512) NOT NULL,
    [Morada][varchar](512) NOT NULL,
    [NumeroRegistoNacional][int] NOT NULL,
    [Telefone][int] NOT NULL,
    PRIMARY KEY ([NumeroRegistoNacional])
)
GO

CREATE TABLE [SNS_Especialidade](
    [Nome][varchar](512) NOT NULL,
    [Codigo][int] NOT NULL,
    PRIMARY KEY ([Nome])
)
GO

CREATE TABLE [SNS_Medico](
    [Especialidade_Nome][varchar](512) NOT NULL REFERENCES [SNS_Especialidade]([Nome]),
    [SNS][int] NOT NULL,
    PRIMARY KEY ([SNS])
)
GO

CREATE TABLE [SNS_Paciente](
    [DataNascimento][int] NOT NULL,
    [Endereco][varchar](512) NOT NULL,
    [NumeroUtente][int] NOT NULL,
    [Nome][varchar](512) NOT NULL,
    PRIMARY KEY ([NumeroUtente])
)
GO

CREATE TABLE [SNS_Farmacia](
    [Morada][varchar](512) NOT NULL,
    [Testes][int] NOT NULL,
    [Nome][varchar](512) NOT NULL,
    [NIF][int] NOT NULL,
    PRIMARY KEY ([NIF])
)
GO

CREATE TABLE [SNS_Prescricao](
    [data][int] NOT NULL,
    [NumUnicoPrescricao][int] NOT NULL REFERENCES [SNS_Medico]([SNS]),
    [Medico][varchar](512) NOT NULL,
    [Paciente][int] NOT NULL REFERENCES [SNS_Paciente]([NumeroUtente]),
    [Farmacia][int] NOT NULL REFERENCES [SNS_Farmacia]([NIF]),
    PRIMARY KEY ([NumUnicoPrescricao])
)
GO

CREATE TABLE [SNS_Farmaco](
    [Formula][int] NOT NULL REFERENCES [SNS_Prescricao]([NumUnicoPrescricao]),
    [NomeComercial][varchar](512) NOT NULL,
    [Prescricao][int] NOT NULL REFERENCES [SNS_PrescricaoNacional]([NumeroRegistoNacional]),
    PRIMARY KEY ([Formula],[NomeComercial])
)
GO

