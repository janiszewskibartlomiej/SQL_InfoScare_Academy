USE [1449_isa]
GO
	IF EXISTS (SELECT * FROM sys.tables WHERE name = 'DanePracowników') DROP TABLE DanePracowników
GO
--
CREATE TABLE DanePracowników
	(id int,
	Imię nvarchar(50),
	Nazwisko nvarchar(50),
	PESEL char(11),
	Stanowisko tinyint,
	Miejscowość int,
	Grupa char(1))
GO
-- tworzenie tabeli miejscowości
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Miejscowości') DROP TABLE Miejscowości
GO
CREATE TABLE Miejscowości
	(id int,
	Miejscowość nvarchar(50))
GO
-- dodawanie miejscowości
INSERT INTO Miejscowości (id, Miejscowość) VALUES (1, 'Gdańsk')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (2, 'Gdynia')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (3, 'Słupsk')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (4, 'Tczew')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (5, 'Wejherowo')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (6, 'Rumia')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (7, 'Starogard Gdański')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (8, 'Chojnice')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (9, 'Malbork')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (10, 'Kwidzyn')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (11, 'Sopot')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (12, 'Lębork')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (13, 'Pruszcz Gdański')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (14, 'Reda')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (15, 'Kościerzyna')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (16, 'Bytów')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (17, 'Ustka')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (18, 'Kartuzy')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (19, 'Człuchów')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (20, 'Puck')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (21, 'Miastko')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (22, 'Sztum')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (23, 'Władysławowo')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (24, 'Nowy Dwór Gdański')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (25, 'Czersk')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (26, 'Prabuty')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (27, 'Pelplin')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (28, 'Skarszewy')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (29, 'Gniew')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (30, 'Żukowo')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (31, 'Czarne')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (32, 'Dzierzgoń')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (33, 'Brusy')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (34, 'Debrzno')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (35, 'Nowy Staw')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (36, 'Łeba')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (37, 'Kępice')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (38, 'Skórcz')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (39, 'Hel')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (40, 'Czarna Woda')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (41, 'Jastarnia')
INSERT INTO Miejscowości (id, Miejscowość) VALUES (42, 'Krynica Morska')

GO
-- dodawnie pracowników
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (1,'Adam','Andrzejewski',2,22,'51113029756','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (2,'Adam','Jankowski',3,33,'34050025768','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (3,'Adam','Jasiński',2,31,'18290852638','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (4,'Agata','Gajewska',3,23,'27011272149','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (5,'Agata','Kubiak',2,10,'87132996816','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (6,'Agata','Pawlak',3,15,'93172181382','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (7,'Agata','Wysocka',2,23,'38082183843','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (8,'Agnieszka','Zając',2,34,'28261850286','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (9,'Aleksandra','Szulc',2,25,'15212803321','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (10,'Andrzej','Szewczyk',3,20,'14092159564','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (11,'Andrzej','Ziółkowski',3,5,'86203456861','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (12,'Aneta','Jakubowska',3,22,'88070886861','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (13,'Mirosław','Czerwiński',4,2,'11143044941','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (14,'Piotr','Adamczyk',4,34,'59211430940','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (15,'Robert','Włodarczyk',7,19,'47181161001','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (16,'Sebastian','Chmielewski',5,21,'60073768256','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (17,'Sylwia','Kaźmierczak',6,2,'53213249441','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (18,'Wanda','Czarnecka',7,8,'70100841789','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (19,'Wiesława','Tomaszewska',4,19,'67122825495','A')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (20,'Anna','Krajewska',3,27,'76060533478','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (21,'Bożena','Baranowska',2,30,'93081211428','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (22,'Czesław','Wróbel',3,3,'32011616249','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (23,'Danuta','Piotrowska',2,8,'61280564795','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (24,'Dorota','Maciejewska',3,21,'22181170753','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (25,'Dorota','Tomaszewska',1,39,'63220987456','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (26,'Edward','Szulc',4,27,'21261348965','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (27,'Edyta','Nowakowska',5,29,'27092100700','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (28,'Edyta','Nowicka',7,32,'18110850908','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (29,'Ewa','Duda',4,31,'35143414494','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (30,'Ewelina','Malinowska',7,5,'73061572669','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (31,'Genowefa','Cieślak',4,20,'36060953474','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (32,'Genowefa','Lis',5,28,'45070554655','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (33,'Grażyna','Górska',7,20,'60092500314','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (34,'Grażyna','Mazur',7,1,'42240608115','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (35,'Grzegorz','Borkowski',5,35,'51183421388','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (36,'Henryk','Bąk',4,3,'27060853039','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (37,'Henryk','Kowalski',5,28,'91012440201','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (38,'Irena','Wójcik',6,2,'50270764086','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (39,'Iwona','Urbańska',4,17,'74061465337','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (40,'Monika','Szewczyk',4,3,'96160310145','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (41,'Piotr','Malinowski',4,28,'62113871972','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (42,'Roman','Kwiatkowski',6,23,'51270371266','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (43,'Stanisław','Kowalski',4,2,'41063108620','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (44,'Tomasz','Kucharski',5,1,'44110097291','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (45,'Wanda','Krawczyk',4,37,'61243067461','B')
INSERT INTO DanePracowników (id, Imię, Nazwisko, Stanowisko, Miejscowość, PESEL, Grupa) VALUES (46,'Władysław','Piotrowski',6,3,'91093606688','B')

