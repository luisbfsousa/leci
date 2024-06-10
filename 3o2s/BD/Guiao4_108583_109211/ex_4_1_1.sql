CREATE TABLE [Rent_Cliente](
    [Nome][varchar](512) NOT NULL,
    [Endereco][varchar](512) NOT NULL,
    [NumCarta][int] NOT NULL,
    [NIF][int] NOT NULL,
    PRIMARY KEY ([NIF])
)
GO

CREATE TABLE [Rent_Balcao](
    [Nome][varchar](512) NOT NULL,
    [Endereco][varchar](512) NOT NULL,
    [Numero][int] NOT NULL,
    PRIMARY KEY ([Numero])
)
GO

CREATE TABLE [Rent_Veiculo](
    [Ano][int] NOT NULL,
    [Marca][varchar](512) NOT NULL,
    [Matricula][varchar](512) NOT NULL,
    [TipoVeiculoCodigo][int] NOT NULL,
    PRIMARY KEY ([TipoVeiculoCodigo])
)
GO

CREATE TABLE [Rent_Ligeiro](
    [numeroLugares][int] NOT NULL,
    [Portas][int] NOT NULL,
    [Combustivel][int] NOT NULL,
    [TipoVeiculoCodigo][int] NOT NULL,
    PRIMARY KEY ([TipoVeiculoCodigo])
)
GO

CREATE TABLE [Rent_Pesado](
    [Peso][int] NOT NULL,
    [Passageiros][int] NOT NULL,
    [TipoVeiculoCodigo][int] NOT NULL,
    PRIMARY KEY ([TipoVeiculoCodigo])
)
GO

CREATE TABLE [Rent_Similiaridade](
    [TipoVeiculoCodigo][int] NOT NULL,
    PRIMARY KEY ([TipoVeiculoCodigo])
)
GO

CREATE TABLE [Rent_TipoVeiculo](
    [Designacao][varchar](512) NOT NULL,
    [ArCondicionado][varchar](512) NOT NULL,
    [Codigo][int] NOT NULL,
    [Veiculo_Codigo][int] NOT NULL REFERENCES [Rent_Veiculo]([TipoVeiculoCodigo]),
    [Ligeiro_Codigo][int] NOT NULL REFERENCES [Rent_Ligeiro]([TipoVeiculoCodigo]),
    [Pesado_Codigo][int] NOT NULL REFERENCES [Rent_Pesado]([TipoVeiculoCodigo]),
    [Similiaridade_Codigo][int] NOT NULL REFERENCES [Rent_Similiaridade]([TipoVeiculoCodigo]),
    PRIMARY KEY ([Codigo])
)
GO

CREATE TABLE [Rent_Aluguer](
    [data][int] NOT NULL,
    [duracao][int] NOT NULL,
    [numero][int] NOT NULL,
     [Client_NIF][int] NOT NULL REFERENCES [Rent_Cliente]([NIF]),
    [Balcao_Numero][int] NOT NULL REFERENCES [Rent_Balcao]([Numero]),
    [Veiculo_TipoVeiculoCodigo][int] NOT NULL REFERENCES [Rent_Veiculo]([TipoVeiculoCodigo]),
    PRIMARY KEY ([Numero])
)
GO