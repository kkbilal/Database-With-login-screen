CREATE TABLE proje (
proje_no INT IDENTITY(1,1) PRIMARY KEY,
proje_ad VARCHAR(20) UNIQUE NOT NULL,
baslama_tarihi DATE NOT NULL,
planlanan_bitis_tarihi DATE NOT NULL
);

INSERT INTO proje VALUES
('TEM�Z D�NYA','2015.01.20','2017.01.11'),
('G�VENL� INTERNET','2017.05.15','2020.06.09'),
('MUTLU �EH�R','2017.07.11','2019.11.29'),
('AKILLI EVLER','2018.02.10','2021.11.29'),
('SESS�Z ORTAM','2018.03.01','2019.11.29');