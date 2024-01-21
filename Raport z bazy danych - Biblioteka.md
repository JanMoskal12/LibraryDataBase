# Raport z bazy danych - Biblioteka

## Jan Moskal i Szymon Makulec

Wyniki etapu 1

| Czytelnik      | Adres                      | Wypożyczona książka | Książki              | Gatunek             | Autorzy       |
|------------|------------|------------|------------|------------|------------|
| Szymon Makulec | Lublin, ul.Nadbystrzycka 1 | \-                  | Star Wars: Thrawn    | Science Fiction     | Timothy Zahn  |
| Szymon Makulec | Lublin, ul.Nadbystrzycka 1 | 1234                | Akademia Pana Kleksa | Przygodowa, Fantasy | Jan Brzechwa  |
| Jan Moskal     | Lublin ul. Tomasza Zana 10 | \-                  | Lalka                | Powieść             | Bolesław Prus |

Wyniki etapu 2

| Nazwa związku          | Encje                   | Liczności        |
|------------------------|-------------------------|------------------|
| Autor_Książki          | Książki, Autorzy        | Wiele do wielu   |
| Gatunek_Książki        | Książki, Gatunek        | Wiele do wielu   |
| Egzemplarz_Książki     | Książki, Egzemplarz     | Jeden do wielu   |
| Wypożyczony_Egzemplarz | Egzemplarz, Wypożyczone | Jeden do wielu   |
| Książka_U_Czytelnika   | Wypożyczone, Czytelnik  | Wiele do jednego |
| Adres_Czytelnika       | Czytelnik, Adres        | Wiele do jednego |

Wyniki etapu 3

![](forgive and you will be forgiven.png)

Wyniki etapu 5
