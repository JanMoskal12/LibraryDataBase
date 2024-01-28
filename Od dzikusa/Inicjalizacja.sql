

CREATE TABLE Adresy (
    ID_Adres INT PRIMARY KEY AUTO_INCREMENT,
    Miejscowosc VARCHAR(18) NOT NULL,
    Ulica VARCHAR(20) NOT NULL,
    NrDomu VARCHAR(5) NOT NULL,
    NrLokalu VARCHAR(2),
    KodPocztowy CHAR(6) NOT NULL
);

CREATE TABLE Czytelnicy (
    ID_Czytelnicy INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(20) NOT NULL,
    Nazwisko VARCHAR(30) NOT NULL,
    Email VARCHAR(65) NOT NULL,
    NumerTelefonu CHAR(9) NOT NULL,
    Adres_ID INT,
    FOREIGN KEY (Adres_ID) REFERENCES Adresy(ID_Adres)
);

CREATE TABLE Egzemplarze (
    ID_Egzemplarz INT PRIMARY KEY AUTO_INCREMENT,
    Ksiazka_ID INT NOT NULL,
    FOREIGN KEY (Ksiazka_ID) REFERENCES Książki(Ksiazka_ID)
);

CREATE TABLE Rejestr (
    ID_Rejestr INT PRIMARY KEY AUTO_INCREMENT,
    Czytelnik_ID INT NOT NULL,
    Egzemplarz_ID INT NOT NULL,
    DataWypozyczenia DATE,
    DataOddania DATE,
    FOREIGN KEY (Czytelnik_ID) REFERENCES Czytelnicy(Czytelnik_ID),
    FOREIGN KEY (Egzemplarz_ID) REFERENCES Egzemplarze(Egzemplarz_ID)
);


CREATE TABLE Książki (
    ID_Książka INTEGER PRIMARY KEY AUTOINCREMENT,
    Tytuł VARCHAR(60) NOT NULL
);


CREATE TABLE Autorzy (
    ID_Autor INTEGER PRIMARY KEY AUTOINCREMENT,
    Imie VARCHAR(20) NOT NULL,
    Nazwisko VARCHAR(30) NOT NULL
);


CREATE TABLE Gatunki (
    ID_Gatunek INTEGER PRIMARY KEY AUTOINCREMENT,
    NazwaGatunku VARCHAR(30) NOT NULL
);

CREATE TABLE AutorzyKsiążki (
    ID_Książka INTEGER,
    ID_Autor INTEGER,
    FOREIGN KEY (ID_Książka) REFERENCES Książki (ID_Książka),
    FOREIGN KEY (ID_Autor) REFERENCES Autorzy (ID_Autor)
);

CREATE TABLE GatunkiKsiążki (
    ID_Książka INTEGER,
    ID_Gatunek INTEGER,
    FOREIGN KEY (ID_Książka) REFERENCES Książki (ID_Książka),
    FOREIGN KEY (ID_Gatunek) REFERENCES Gatunki (ID_Gatunek)
);