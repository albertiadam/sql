CREATE TABLE Paciens (
    paciens_id INT NOT NULL,
    nev VARCHAR(100) NOT NULL,
    kor INT NOT NULL,
    nem VARCHAR(5) NOT NULL,
    cim VARCHAR(255) NOT NULL,
  	CONSTRAINT pk_paciens PRIMARY KEY (paciens_id),
  	CONSTRAINT kor_check CHECK (kor > 0),
  	CONSTRAINT nem_check CHECK (nem IN ('férfi', 'nő'))
);
 
CREATE TABLE Doktor (
    doktor_id INT NOT NULL,
    nev VARCHAR(100) NOT NULL,
    szakterulet VARCHAR(100) NOT NULL,
    tapasztalat_ev INT NULL,
  	CONSTRAINT pk_doktor PRIMARY KEY (doktor_id)
);
 
CREATE TABLE Rendelo (
    rendelo_id INT NOT NULL,
    nev VARCHAR(100) NOT NULL,
    cim VARCHAR(255) NOT NULL,
    telefon VARCHAR(20) NULL,
  	CONSTRAINT pk_rendelo PRIMARY KEY (rendelo_id)
);
 
CREATE TABLE Vizsgalat (
    vizsgalat_id INT NOT NULL,
    paciens_id INT NOT NULL,
    doktor_id INT NOT NULL,
    rendelo_id INT NOT NULL,
    datum DATE NOT NULL,
    diagnozis varchar(255) NOT NULL,
    kezeles varchar(255) NOT NULL,
  	CONSTRAINT pk_vizsgalat PRIMARY KEY (vizsgalat_id),
 	CONSTRAINT fk_paciens FOREIGN KEY (paciens_id) REFERENCES Paciens(paciens_id),
    CONSTRAINT fk_doktor FOREIGN KEY (doktor_id) REFERENCES Doktor(doktor_id),
    CONSTRAINT fk_rendelo FOREIGN KEY (rendelo_id) REFERENCES Rendelo(rendelo_id)
);
 
CREATE TABLE Recept (
    recept_id INT NOT NULL,
    paciens_id INT NOT NULL,
    doktor_id INT NOT NULL,
    rendelo_id INT NOT NULL,
    gyogyszer VARCHAR(100) NOT NULL,
    napi_adag INT NOT NULL,
    meddig DATE NOT NULL,
 	CONSTRAINT pk_recept PRIMARY KEY (recept_id),
	CONSTRAINT fk_paciens_recept FOREIGN KEY (paciens_id) REFERENCES Paciens(paciens_id),
    CONSTRAINT fk_doktor_recept FOREIGN KEY (doktor_id) REFERENCES Doktor(doktor_id),
    CONSTRAINT fk_rendelo_recept FOREIGN KEY (rendelo_id) REFERENCES Rendelo(rendelo_id)
);
