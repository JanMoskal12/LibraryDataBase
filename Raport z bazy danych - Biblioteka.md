# Raport z bazy danych - Biblioteka

## Jan Moskal i Szymon Makulec

Wyniki etapu 1

| Czytelnicy     | Adresy                     | Rejestr | Egzemplarze | Książki              | Gatunki             | Autorzy       |
|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| Szymon Makulec | Lublin, ul.Nadbystrzycka 1 | \-      | \-          | Star Wars: Thrawn    | Science Fiction     | Timothy Zahn  |
| Szymon Makulec | Lublin, ul.Nadbystrzycka 1 | 1234    | 2           | Akademia Pana Kleksa | Przygodowa, Fantasy | Jan Brzechwa  |
| Jan Moskal     | Lublin ul. Tomasza Zana 10 | \-      | \-          | Lalka                | Powieść             | Bolesław Prus |

Wyniki etapu 2

| Nazwa związku          | Encje                | Liczności        |
|------------------------|----------------------|------------------|
| Autor Książki          | Książki, Autorzy     | Wiele do wielu   |
| Gatunek Książki        | Książki, Gatunki     | Wiele do wielu   |
| Egzemplarz Książki     | Książki, Egzemplarze | Jeden do wielu   |
| Egzemplarz w Rejestrze | Egzemplarze, Rejestr | Jeden do wielu   |
| Czytelnik w Rejestrze  | Rejestr, Czytelnicy  | Wiele do jednego |
| Adres Czytelnika       | Czytelnicy, Adresy   | Wiele do jednego |

Wyniki etapu 3

![](encje.png)

Wyniki etapu 5, 7

| Encja       | Atrybut          | Przykład             | Dziedzina atrybutu                                                                               |
|--------------|--------------|--------------|-------------------------------|
| Gatunek     | NazwaGatunku     | Dramat               | Lista gatunków (od 4 do 30 liter)                                                                |
| Autorzy     | Imie             | Adam                 | Imiona autorów książek (od 2 do 20 liter)                                                        |
| Autorzy     | Nazwisko         | Słowacki             | Nazwiska autorów książek (od 3 do 30 liter)                                                      |
| Książki     | Tytuł            | Pan Tadeusz          | Tytuły książek (od 2 do 60 liter)                                                               |                                       |
| Rejestr     | DataWypożyczenia | 2021-01-01           | Data wypożyczenia książki przez czytelnika                                |
| Rejestr     | DataOddania      | 2021-02-01           | Data oddania książki przez czytelnika                               |
| Czytelnicy  | Imie             | Janusz               | Imiona czytelników książek (od 2 do 20 liter)                                                    |
| Czytelnicy  | Nazwisko         | Kowalski             | Nazwiska czytelników książek (od 3 do 30 liter)                                                  |
| Czytelnicy  | Email            | example\@example.com | Email czytelnika, musi składać się z nazwy użytkownika, znaku \@, oraz domeny i jej rozszerzenia - 65 znaków |
| Czytelnicy  | NrTelefonu       | 500100100            | Ciąg składający się z dokładnie 9 cyfr                                                           |
| Adresy      | Miejscowość      | Lublin               | Nazwa miasta (od 3 do 18 liter)                                                     |
| Adresy      | Ulica            | Nadbystrzycka        | Nazwa ulicy (od 3 do 20 liter)                                                                   |
| Adresy      | NrDomu     | 1234A                   | Ciąg znaków (od 1 do 5)                                                                       |
| Adresy      | NrLokalu         | 1234B                    | Ciąg znaków (od 1 do 5)                                                                            |
| Adresy      | KodPocztowy      | 20-510               | Ciąg składający się z 5 cyfr i jednego - między drugą, a trzecią literą                          |


Wyniki etapu 7
