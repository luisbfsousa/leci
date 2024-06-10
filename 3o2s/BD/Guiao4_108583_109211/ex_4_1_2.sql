CREATE TABLE [AIR_Airport](
    [CodigoAeroporto][int] NOT NULL,
    [Cidade][varchar](512) NOT NULL,
    [Estado][varchar](512) NOT NULL,
    [Nome][varchar](512) NOT NULL,
    PRIMARY KEY ([CodigoAeroporto])
)
GO

CREATE TABLE [AIR_Airplane](
    [IDVoo][int] NOT NULL,
    [TotalLugares][int] NOT NULL,
    [NomeTipo][varchar](512) NOT NULL,
    PRIMARY KEY ([IDVoo])
)
GO

CREATE TABLE [AIR_Flight](
    [Numero][int] NOT NULL,
    [LinhaAerea][varchar](512) NOT NULL, 
    [DiaSemana][varchar](512) NOT NULL,
    PRIMARY KEY ([Numero])
)
GO

CREATE TABLE [AIR_FlightLeg](
    [NumVoo][int] NOT NULL REFERENCES [AIR_Flight]([Numero]),
    [Numleg][int] NOT NULL,
    [Airport_AeroportoSaida][int] NOT NULL REFERENCES [AIR_Airport]([CodigoAeroporto]),
    [Airport_AeroportoChegada][int] NOT NULL REFERENCES [AIR_Airport]([CodigoAeroporto]),
    [PrevisaoAeroportoSaida][varchar](512) NOT NULL,
    [PrevisaoAeroportoChegada][varchar](512) NOT NULL,
    PRIMARY KEY ([NumVoo],[Numleg])
)
GO

CREATE TABLE [AIR_AirplaneType](
    [Companhia][varchar](512) NOT NULL,
    [Airplane_IDVoo][int] NOT NULL REFERENCES [AIR_Airplane]([IDVoo]),
    [MaxLugares][int] NOT NULL,
    PRIMARY KEY ([Airplane_IDVoo])
)
GO

CREATE TABLE [AIR_Fare](
    [Restricoes][varchar](512) NOT NULL,
    [Montante][int] NOT NULL,
    [Codigo][int] NOT NULL,
    [Flight_NumVoo][int] NOT NULL REFERENCES [AIR_Flight]([Numero]),
    PRIMARY KEY ([Codigo])
)
GO

CREATE TABLE [AIR_LegInstance](
    [Data][int] NOT NULL,
    [NumLugares][int] NOT NULL,
    [FlightLeg_NumVoo][int] NOT NULL,
    [FlightLeg_Numleg][int] NOT NULL,
    [Airplane_IDVoo][int] NOT NULL REFERENCES [AIR_Airplane]([IDVoo]),
    PRIMARY KEY ([Data],[NumLugares]),
    FOREIGN KEY ([FlightLeg_NumVoo], [FlightLeg_Numleg]) REFERENCES [AIR_FlightLeg]([NumVoo], [Numleg])
)
GO

CREATE TABLE [AIR_Seat](
    [NumLugar][int] NOT NULL,
    [Airplane_IDVoo][int] NOT NULL REFERENCES [AIR_Airplane]([IDVoo]),
    [LegInstance_Data][int] NOT NULL,
    [LegInstance_NumLugares][int] NOT NULL,
    [Airport_AeroportoSaida][int] NOT NULL REFERENCES [AIR_Airport]([CodigoAeroporto]),
    [Airport_AeroportoChegada][int] NOT NULL REFERENCES [AIR_Airport]([CodigoAeroporto]),
    [PrevisaoAeroportoSaida][varchar](512) NOT NULL,
    [PrevisaoAeroportoChegada][varchar](512) NOT NULL,
    PRIMARY KEY ([NumLugar],[Airplane_IDVoo],[LegInstance_Data],[LegInstance_NumLugares]),
    FOREIGN KEY ([LegInstance_Data], [LegInstance_NumLugares]) REFERENCES [AIR_LegInstance]([Data], [NumLugares])
)
GO