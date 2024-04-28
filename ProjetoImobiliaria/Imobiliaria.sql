CREATE TABLE Categoria (
    CategoriaID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Localidade (
    LocalidadeID INT PRIMARY KEY,
    Tipo VARCHAR(50)
);

CREATE TABLE TipoNegocio (
    NegocioID INT PRIMARY KEY,
    Tipo VARCHAR(50)
);

CREATE TABLE Imovel (
    ImovelID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Descricao TEXT,
    Valor DECIMAL(10, 2),
    NroComodos INT,
    CategoriaID INT,
    LocalidadeID INT,
    TipoNegocioID INT,
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
    FOREIGN KEY (LocalidadeID) REFERENCES Localidade(LocalidadeID),
    FOREIGN KEY (TipoNegocioID) REFERENCES TipoNegocio(NegocioID)
);

CREATE TABLE ImagemImovel (
    ImagemID INT PRIMARY KEY,
    ImageURL VARCHAR(255),
    ImovelID INT,
    FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID)
);

CREATE TABLE ComodosImovel (
    ComodosID INT PRIMARY KEY,
    ImovelID INT,
    NumComodos INT,
    FOREIGN KEY (ImovelID) REFERENCES Imovel(ImovelID)
);