CREATE TABLE Szobak (
    SzobaID INT IDENTITY(1,1)  PRIMARY KEY,
    Nev VARCHAR(100) NOT NULL,
    Tema VARCHAR(50) NOT NULL,
    Nehezseg TINYINT NOT NULL CHECK (Nehezseg BETWEEN 1 AND 5),
    MaximalisJatekosSzam TINYINT NOT NULL
KepForras VARCHAR(255)	
);


CREATE TABLE Jatekosok (
    JatekosID INT IDENTITY(1,1) PRIMARY KEY,
    Nev VARCHAR(100) NOT NULL,
    Kor TINYINT NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Foglalasok (
    FoglalasID INT IDENTITY(1,1) PRIMARY KEY,
    SzobaID INT NOT NULL,
    JatekosID INT NOT NULL,
    Idopont DATETIME NOT NULL,
    Allapot VARCHAR(15) NOT NULL CHECK (Allapot IN ('Aktiv', 'Lemondott', 'Teljesitett')),
    FOREIGN KEY (SzobaID) REFERENCES Szobak(SzobaID) ON DELETE CASCADE,
    FOREIGN KEY (JatekosID) REFERENCES Jatekosok(JatekosID) ON DELETE CASCADE
);

INSERT INTO Szobak (Nev, Tema, Nehezseg, MaximalisJatekosSzam, KepForras) VALUES
('Kalózhajó rejtély', 'Kalózos', 4, 6, 'https://www.exitgames.hu/data/images/products/225/8ae9c92654ebc5233a4f77b2cd705b55.jpg'),
('Űrbázis mentőakció', 'Sci-fi', 5, 8, ' https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1854580/ss_d1d3b26125d61cf0da808aa47356169a20f42cb3.1920x1080.jpg?t=1658006695'),
('Kísértetkastély', 'Horror', 3, 5, ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwXNtfxJaiTeKFtDOy-c4c4g4Bm5SfEn8O4g&s'),
('Középkori börtönszoba', 'Kaland', 2, 4, ' https://becreativeteam.com/wp-content/uploads/2018/06/02.jpg');

INSERT INTO Jatekosok (Nev, Kor, Email) VALUES
('Kiss Péter', 25, 'kiss.peter@example.com'),
('Nagy Anna', 30, 'nagy.anna@example.com'),
('Tóth László', 20, 'toth.laszlo@example.com'),
('Horváth Éva', 27, 'horvath.eva@example.com');

INSERT INTO Foglalasok (SzobaID, JatekosID, Idopont, Allapot) VALUES
(1, 1, '2024-11-25 14:00:00', 'Aktiv'),
(2, 2, '2024-11-26 16:00:00', 'Teljesitett'),
(3, 3, '2024-11-27 18:00:00', 'Lemondott'),
(4, 4, '2024-11-28 15:00:00', 'Aktiv'),
(1, 2, '2024-11-29 13:00:00', 'Aktiv');
