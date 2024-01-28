CREATE DATABASE Library;
use Library;
CREATE TABLE Adresy (
    ID_Adres INTEGER PRIMARY KEY AUTO_INCREMENT,
    Miejscowość VARCHAR(18) NOT NULL,
    Ulica VARCHAR(20) NOT NULL,
    NrDomu VARCHAR(5) NOT NULL,
    NrLokalu VARCHAR(2),
    KodPocztowy CHAR(6) NOT NULL
);
CREATE TABLE Czytelnicy (
    ID_Czytelnik INTEGER PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(20) NOT NULL,
    Nazwisko VARCHAR(30) NOT NULL,
    Email VARCHAR(65) NOT NULL,
    NumerTelefonu CHAR(9) NOT NULL,
    Adres_ID INTEGER NOT NULL,
    FOREIGN KEY (Adres_ID) REFERENCES Adresy(ID_Adres)
);
CREATE TABLE Autorzy (
    ID_Autor INTEGER PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(20) NOT NULL,
    Nazwisko VARCHAR(30) NOT NULL
);
CREATE TABLE Gatunki (
    ID_Gatunek INTEGER PRIMARY KEY AUTO_INCREMENT,
    NazwaGatunku VARCHAR(30) NOT NULL
);
CREATE TABLE Książki (
    ID_Książka INTEGER PRIMARY KEY AUTO_INCREMENT,
    Tytuł VARCHAR(60) NOT NULL
);
CREATE TABLE AutorzyKsiążki (
    Książka_ID INTEGER,
    Autor_ID INTEGER,
    FOREIGN KEY (Książka_ID) REFERENCES Książki (ID_Książka),
    FOREIGN KEY (Autor_ID) REFERENCES Autorzy (ID_Autor)
);
CREATE TABLE GatunkiKsiążki (
    Książka_ID INTEGER,
    Gatunek_ID INTEGER,
    FOREIGN KEY (Książka_ID) REFERENCES Książki (ID_Książka),
    FOREIGN KEY (Gatunek_ID) REFERENCES Gatunki (ID_Gatunek)
);
CREATE TABLE Egzemplarze (
    ID_Egzemplarz INT PRIMARY KEY AUTO_INCREMENT,
    Książka_ID INT NOT NULL,
    FOREIGN KEY (Książka_ID) REFERENCES Książki(ID_Książka)
);
CREATE TABLE Rejestr (
    ID_Rejestr INT PRIMARY KEY AUTO_INCREMENT,
    Czytelnik_ID INT NOT NULL,
    Egzemplarz_ID INT NOT NULL,
    DataWypożyczenia DATE,
    DataOddania DATE,
    FOREIGN KEY (Czytelnik_ID) REFERENCES Czytelnicy(ID_Czytelnik),
    FOREIGN KEY (Egzemplarz_ID) REFERENCES Egzemplarze(ID_Egzemplarz)
);