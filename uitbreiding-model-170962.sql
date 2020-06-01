/** opdracht 6l Schrijf nu alle scripts die je nodig hebt om je eigen uitbreiding op de leasedatabase te implementeren. **/

CREATE TABLE [Schade]
(
[Id]	[int] IDENTITY(1,1)	NOT NULL,
[Bedrag]	[nvarchar](150)	NOT NULL,
[DatumOngeval]	[date]	NOT NULL,
[BerijderId]	[int]	NOT NULL,
[VoertuigId]	[int]	NOT NULL,

CONSTRAINT [PK_Schade] PRIMARY KEY  ([Id])
)

CREATE TABLE [Banden]
(
[Id]	[int]	IDENTITY(1,1)NOT NULL,
[Profieldiepte]	[nvarchar](150)	NOT NULL,
[DatumLaatstVervangen]	[date]	NOT NULL,
[VoertuigId]	[int]	NOT NULL,

CONSTRAINT [PK_Banden] PRIMARY KEY  ([Id])
)

CREATE TABLE [Verkoper]
(
[Id]	[int]	IDENTITY(1,1)NOT NULL,
[Voornaam]	[nvarchar](150)	NOT NULL,
[Tussenvoegsel]	[nvarchar](150)	NULL,
[Achternaam]	[nvarchar](150)	NOT NULL,
[Telefoonnummer] [nvarchar](150) NOT NULL,
[OvereenkomstId]	[int]	NOT NULL,

CONSTRAINT [PK_Verkoper] PRIMARY KEY  ([Id])
)

ALTER TABLE [Schade]  WITH CHECK 
	ADD  CONSTRAINT [FK_Schade_Berijders_BerijderId] FOREIGN KEY([BerijderId])
REFERENCES [Berijder] ([Id])
	ON UPDATE CASCADE 
	ON DELETE NO ACTION
GO

ALTER TABLE [Schade] CHECK CONSTRAINT [FK_Schade_Berijders_BerijderId]
GO

ALTER TABLE [Schade]  WITH CHECK 
	ADD  CONSTRAINT [FK_Schade_Voertuigs_VoertuigId] FOREIGN KEY([VoertuigId])
REFERENCES [Voertuig] ([Id])
	ON UPDATE CASCADE 
	ON DELETE NO ACTION
GO

ALTER TABLE [Schade] CHECK CONSTRAINT [FK_Schade_Voertuigs_VoertuigId]
GO

ALTER TABLE [Banden]  WITH CHECK 
	ADD  CONSTRAINT [FK_Banden_Voertuigs_VoertuigId] FOREIGN KEY([VoertuigId])
REFERENCES [Voertuig] ([Id])
	ON UPDATE CASCADE 
	ON DELETE NO ACTION
GO

ALTER TABLE [Banden] CHECK CONSTRAINT [FK_Banden_Voertuigs_VoertuigId]
GO

ALTER TABLE [Verkoper]  WITH CHECK 
	ADD  CONSTRAINT [FK_Verkoper_Overeenkomsten_OvereenkomstId] FOREIGN KEY([OvereenkomstId])
REFERENCES [Overeenkomst] ([Id])
	ON UPDATE CASCADE 
	ON DELETE NO ACTION
GO

ALTER TABLE [Verkoper] CHECK CONSTRAINT [FK_Verkoper_Overeenkomsten_OvereenkomstId]
GO



INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('15,734','1969-12-31'),('1,135','1969-12-31'),('3,709','1969-12-31'),('8,681','1969-12-31'),('6,075','1969-12-31'),('21,987','1969-12-31'),('3,606','1969-12-31'),('22,445','1969-12-31'),('4,200','1969-12-31'),('5,189','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('0,543','1969-12-31'),('22,280','1969-12-31'),('14,533','1969-12-31'),('24,191','1969-12-31'),('8,026','1969-12-31'),('12,238','1969-12-31'),('0,750','1969-12-31'),('6,239','1969-12-31'),('10,789','1969-12-31'),('23,057','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('15,232','1969-12-31'),('11,320','1969-12-31'),('7,388','1969-12-31'),('9,779','1969-12-31'),('21,015','1969-12-31'),('4,383','1969-12-31'),('12,931','1969-12-31'),('10,336','1969-12-31'),('18,514','1969-12-31'),('23,954','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('7,762','1969-12-31'),('7,373','1969-12-31'),('17,538','1969-12-31'),('17,941','1969-12-31'),('23,580','1969-12-31'),('6,450','1969-12-31'),('13,795','1969-12-31'),('22,245','1969-12-31'),('18,871','1969-12-31'),('20,243','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('22,330','1969-12-31'),('23,589','1969-12-31'),('6,303','1969-12-31'),('5,496','1969-12-31'),('12,870','1969-12-31'),('17,416','1969-12-31'),('5,723','1969-12-31'),('0,774','1969-12-31'),('15,968','1969-12-31'),('6,410','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('24,241','1969-12-31'),('19,707','1969-12-31'),('4,753','1969-12-31'),('23,435','1969-12-31'),('5,210','1969-12-31'),('21,804','1969-12-31'),('17,502','1969-12-31'),('1,283','1969-12-31'),('8,921','1969-12-31'),('22,125','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('7,665','1969-12-31'),('21,842','1969-12-31'),('3,621','1969-12-31'),('14,538','1969-12-31'),('3,895','1969-12-31'),('20,838','1969-12-31'),('14,106','1969-12-31'),('17,844','1969-12-31'),('20,515','1969-12-31'),('12,031','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('24,306','1969-12-31'),('10,971','1969-12-31'),('3,631','1969-12-31'),('24,278','1969-12-31'),('3,078','1969-12-31'),('21,616','1969-12-31'),('10,530','1969-12-31'),('3,772','1969-12-31'),('20,795','1969-12-31'),('0,983','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('23,976','1969-12-31'),('21,251','1969-12-31'),('9,337','1969-12-31'),('11,868','1969-12-31'),('19,720','1969-12-31'),('14,268','1969-12-31'),('14,641','1969-12-31'),('18,561','1969-12-31'),('5,395','1969-12-31'),('17,545','1969-12-31');
INSERT INTO Schade([Bedrag],[DatumOngeval]) VALUES('9,096','1969-12-31'),('7,873','1969-12-31'),('9,073','1969-12-31'),('12,925','1969-12-31'),('4,224','1969-12-31'),('4,049','1969-12-31'),('24,061','1969-12-31'),('3,133','1969-12-31'),('17,739','1969-12-31'),('13,210','1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(7,'1969-12-31'),(8,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(3,'1969-12-31'),(6,'1969-12-31'),(10,'1969-12-31'),(7,'1969-12-31'),(4,'1969-12-31'),(5,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(4,'1969-12-31'),(4,'1969-12-31'),(2,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(10,'1969-12-31'),(1,'1969-12-31'),(1,'1969-12-31'),(8,'1969-12-31'),(6,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(4,'1969-12-31'),(6,'1969-12-31'),(8,'1969-12-31'),(3,'1969-12-31'),(10,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(9,'1969-12-31'),(4,'1969-12-31'),(4,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(9,'1969-12-31'),(9,'1969-12-31'),(1,'1969-12-31'),(2,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(1,'1969-12-31'),(7,'1969-12-31'),(1,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(8,'1969-12-31'),(6,'1969-12-31'),(7,'1969-12-31'),(6,'1969-12-31'),(8,'1969-12-31'),(8,'1969-12-31'),(4,'1969-12-31'),(4,'1969-12-31'),(9,'1969-12-31'),(1,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(7,'1969-12-31'),(9,'1969-12-31'),(5,'1969-12-31'),(6,'1969-12-31'),(9,'1969-12-31'),(3,'1969-12-31'),(2,'1969-12-31'),(9,'1969-12-31'),(3,'1969-12-31'),(2,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(10,'1969-12-31'),(8,'1969-12-31'),(4,'1969-12-31'),(6,'1969-12-31'),(5,'1969-12-31'),(3,'1969-12-31'),(9,'1969-12-31'),(8,'1969-12-31'),(6,'1969-12-31'),(5,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(2,'1969-12-31'),(3,'1969-12-31'),(4,'1969-12-31'),(8,'1969-12-31'),(7,'1969-12-31'),(6,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(5,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(9,'1969-12-31'),(1,'1969-12-31'),(1,'1969-12-31'),(6,'1969-12-31'),(7,'1969-12-31'),(5,'1969-12-31'),(8,'1969-12-31'),(2,'1969-12-31'),(9,'1969-12-31'),(8,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(5,'1969-12-31'),(2,'1969-12-31'),(10,'1969-12-31'),(10,'1969-12-31'),(6,'1969-12-31'),(3,'1969-12-31'),(10,'1969-12-31'),(2,'1969-12-31'),(7,'1969-12-31'),(2,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(6,'1969-12-31'),(2,'1969-12-31'),(2,'1969-12-31'),(4,'1969-12-31'),(9,'1969-12-31'),(6,'1969-12-31'),(2,'1969-12-31'),(4,'1969-12-31'),(4,'1969-12-31'),(7,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(4,'1969-12-31'),(3,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(9,'1969-12-31'),(6,'1969-12-31'),(6,'1969-12-31'),(8,'1969-12-31'),(8,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(5,'1969-12-31'),(4,'1969-12-31'),(2,'1969-12-31'),(3,'1969-12-31'),(4,'1969-12-31'),(3,'1969-12-31'),(2,'1969-12-31'),(7,'1969-12-31'),(1,'1969-12-31'),(3,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(2,'1969-12-31'),(10,'1969-12-31'),(7,'1969-12-31'),(10,'1969-12-31'),(3,'1969-12-31'),(10,'1969-12-31'),(3,'1969-12-31'),(4,'1969-12-31'),(7,'1969-12-31'),(4,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(4,'1969-12-31'),(1,'1969-12-31'),(4,'1969-12-31'),(1,'1969-12-31'),(6,'1969-12-31'),(10,'1969-12-31'),(8,'1969-12-31'),(3,'1969-12-31'),(2,'1969-12-31'),(7,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(6,'1969-12-31'),(4,'1969-12-31'),(6,'1969-12-31'),(9,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(6,'1969-12-31'),(6,'1969-12-31'),(6,'1969-12-31'),(7,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(3,'1969-12-31'),(5,'1969-12-31'),(4,'1969-12-31'),(5,'1969-12-31'),(5,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(7,'1969-12-31'),(4,'1969-12-31'),(7,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(5,'1969-12-31'),(6,'1969-12-31'),(4,'1969-12-31'),(5,'1969-12-31'),(2,'1969-12-31'),(8,'1969-12-31'),(6,'1969-12-31'),(10,'1969-12-31'),(9,'1969-12-31'),(1,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(10,'1969-12-31'),(5,'1969-12-31'),(7,'1969-12-31'),(8,'1969-12-31'),(5,'1969-12-31'),(2,'1969-12-31'),(6,'1969-12-31'),(1,'1969-12-31'),(9,'1969-12-31'),(2,'1969-12-31');
INSERT INTO Banden([ProfielDiepte],[DatumLaatstVervangen]) VALUES(2,'1969-12-31'),(10,'1969-12-31'),(2,'1969-12-31'),(4,'1969-12-31'),(5,'1969-12-31'),(6,'1969-12-31'),(5,'1969-12-31'),(4,'1969-12-31'),(8,'1969-12-31'),(6,'1969-12-31');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Myra','van','Espinoza','(0152) 50485930'),('Elmo','van','Hernandez','(030574) 530062'),('Tanek','van','Spence','(00987) 1417792'),('Orlando','van','Obrien','(086) 83815827'),('Todd','van','James','(00958) 3519603'),('Jared','van','Larsen','(030969) 281823'),('Guy','van','Schneider','(09531) 0596330'),('Reed','van','May','(0976) 39492146'),('Craig','van','George','(037350) 074796'),('Axel','van','Mcclain','(0772) 21517310');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Clinton','van','Higgins','(0431) 62605205'),('Dolan','van','Small','(019) 90259884'),('Aimee','van','Oneil','(08530) 5259139'),('Jocelyn','van','Duncan','(038677) 474518'),('Conan','van','Burgess','(029) 13729919'),('Hasad','van','Potts','(0497) 76337456'),('Nigel','van','Cohen','(0296) 13279530'),('Jonah','van','Charles','(05728) 7213130'),('Olympia','van','Navarro','(08929) 9801766'),('Jeanette','van','David','(030) 38856477');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Wilma','van','Hull','(000) 08897268'),('Maris','van','Dalton','(035678) 634407'),('Kasimir','van','Beck','(067) 49004478'),('Chanda','van','Riddle','(0503) 77281684'),('Veronica','van','Landry','(028) 28694868'),('Quinn','van','Nielsen','(000) 36958644'),('Phelan','van','Andrews','(0069) 47373127'),('Remedios','van','Sosa','(09779) 4784997'),('Mercedes','van','Cannon','(0470) 33599789'),('Xanthus','van','Matthews','(0278) 23052211');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Tad','van','Cook','(098) 15404751'),('Aimee','van','Stevens','(095) 95216638'),('Harrison','van','Nichols','(031302) 064093'),('Tiger','van','Acosta','(0583) 78476001'),('Benedict','van','Marsh','(0659) 07808807'),('Yardley','van','Harrison','(033) 88240241'),('Tatum','van','Sutton','(024) 93241425'),('MacKenzie','van','Daniel','(030538) 104815'),('Beck','van','Barber','(038072) 875961'),('Marah','van','Harrington','(066) 88993816');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Farrah','van','Jordan','(01370) 1892296'),('Rahim','van','Simpson','(01467) 1355152'),('Carlos','van','Ballard','(038564) 083834'),('Wade','van','Oneill','(0338) 94090514'),('Karina','van','Anthony','(07041) 3279181'),('Isabelle','van','Sargent','(0896) 12457866'),('Halla','van','Kerr','(030712) 880796'),('Fredericka','van','Rollins','(0544) 98793695'),('Inez','van','Bernard','(06141) 7849687'),('Colorado','van','Garcia','(033717) 175285');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Flynn','van','Boone','(036194) 250254'),('Tamekah','van','Sherman','(045) 52507651'),('Mark','van','Lee','(096) 72487326'),('Haviva','van','Roberson','(0298) 79863718'),('Acton','van','Lindsay','(0008) 92411950'),('Victoria','van','Weaver','(014) 57473113'),('Tanya','van','Calderon','(035574) 028832'),('Buckminster','van','Huber','(07873) 2306964'),('Laura','van','Buckley','(005) 08171902'),('Blake','van','Guzman','(030394) 475663');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Danielle','van','Harrington','(037655) 360823'),('Charles','van','Ratliff','(09554) 5696361'),('Gage','van','Velazquez','(05926) 5247861'),('Alfreda','van','Perkins','(065) 44376322'),('George','van','Hurley','(0144) 73910181'),('Calvin','van','Velez','(035) 59102231'),('Myles','van','Burris','(031768) 925886'),('Slade','van','Cochran','(060) 22282633'),('Hyacinth','van','Whitaker','(092) 60594195'),('Keelie','van','Turner','(0130) 05087545');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Karleigh','van','Grimes','(037453) 199660'),('Luke','van','Bush','(0374) 35343187'),('Kimberley','van','Price','(035674) 391406'),('Avram','van','Santiago','(00635) 3828799'),('Fleur','van','Gillespie','(034214) 481689'),('Xaviera','van','Pate','(04847) 5051597'),('Solomon','van','Pollard','(036911) 255787'),('Alexa','van','Hurst','(0548) 27493865'),('Micah','van','Boyle','(038692) 163139'),('Flynn','van','Terrell','(09666) 3915127');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Nasim','van','Spears','(038874) 640739'),('Vincent','van','Sherman','(0748) 21654657'),('Leigh','van','Weiss','(0278) 84377385'),('Venus','van','Warren','(091) 52675658'),('Echo','van','Gilbert','(032414) 926924'),('Tad','van','Bishop','(030776) 009721'),('Britanni','van','Graves','(02919) 4300372'),('Ronan','van','Marquez','(036) 31213439'),('Ramona','van','Ferrell','(035611) 902029'),('Justin','van','Emerson','(01904) 4679069');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Nevada','van','Nieves','(032) 92440728'),('Colt','van','Camacho','(05868) 8856596'),('Stephanie','van','Oneill','(034241) 132412'),('Adrian','van','Barr','(083) 47694206'),('Brett','van','Price','(030594) 450806'),('Beck','van','Glover','(024) 71363132'),('Kane','van','Barr','(030293) 825721'),('Colorado','van','Keith','(02917) 0102365'),('Gage','van','Hull','(032768) 932058'),('John','van','Leonard','(075) 72875350');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Ira','van','Stevens','(097) 56809953'),('Kaden','van','Michael','(034) 91796399'),('Quinlan','van','Burch','(04175) 5092441'),('Maxwell','van','Maddox','(075) 82575452'),('Tasha','van','Mcfadden','(04340) 4328355'),('Erasmus','van','Kennedy','(0978) 00931482'),('Teegan','van','Schultz','(0161) 43630739'),('Jackson','van','Everett','(030192) 854302'),('Mechelle','van','Delgado','(09429) 4371184'),('Portia','van','Farmer','(0105) 81854924');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Kalia','van','Shelton','(06959) 6781814'),('Brody','van','Mueller','(031408) 176331'),('Maxwell','van','Delaney','(0739) 27296427'),('Martena','van','Woodward','(069) 04780434'),('Taylor','van','Ray','(082) 44158651'),('Bryar','van','Mercer','(07995) 4527722'),('Moana','van','Cleveland','(0458) 61147660'),('Avram','van','Peters','(0713) 91430369'),('Uta','van','Fox','(0500) 03513757'),('Raymond','van','Goff','(00708) 9369594');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Leigh','van','Mcclain','(032313) 326280'),('Garrett','van','Hopkins','(0903) 85385326'),('Nolan','van','Barr','(041) 07904766'),('Glenna','van','Levine','(039967) 050692'),('Joy','van','Thompson','(01591) 0122889'),('Marny','van','Carter','(030732) 025982'),('Dai','van','Stevenson','(0801) 80864701'),('Leo','van','Sampson','(0359) 30718969'),('Burton','van','Sheppard','(037621) 058081'),('Carissa','van','Roy','(044) 44860344');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Samuel','van','Terrell','(034009) 184200'),('Bryar','van','Jackson','(06611) 8066300'),('Denton','van','Whitehead','(02381) 4572175'),('Maxwell','van','Stuart','(039973) 636698'),('Jarrod','van','Downs','(030473) 433230'),('Gannon','van','Morin','(035) 79794678'),('Vance','van','Oneill','(09287) 0496155'),('Sydney','van','Bender','(038692) 285944'),('Barbara','van','Cote','(01259) 3922212'),('Jessamine','van','Kelly','(035628) 561349');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Willow','van','Wade','(032584) 562910'),('Cleo','van','Howard','(028) 70830186'),('Chase','van','Goff','(074) 87194012'),('Tyler','van','Nichols','(034429) 710350'),('Ariana','van','Love','(07187) 6641147'),('Kieran','van','Kaufman','(0623) 11962869'),('Justina','van','Nolan','(047) 09162809'),('Carol','van','Mcguire','(036832) 152086'),('April','van','Duke','(07028) 7976090'),('Leroy','van','Frederick','(0802) 84911164');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Eliana','van','Wooten','(026) 70923762'),('Grace','van','Peck','(085) 70110261'),('Jael','van','Frye','(077) 38335903'),('Dalton','van','Nielsen','(030711) 553299'),('Giselle','van','Fox','(035967) 954828'),('September','van','Hodges','(05667) 5145968'),('Barrett','van','Watts','(06802) 5488453'),('Aaron','van','Mejia','(0303) 61907622'),('Edan','van','Lester','(0607) 10623429'),('Sigourney','van','Blair','(04088) 3369800');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Amena','van','Vazquez','(037931) 363872'),('Kitra','van','Wilkins','(09526) 2772973'),('Robert','van','Hobbs','(036557) 219211'),('Nathan','van','Buckner','(032066) 517796'),('Sharon','van','Guthrie','(071) 19399700'),('Hanae','van','Powell','(0602) 31441161'),('Herman','van','Young','(06023) 4337427'),('Katell','van','Shepard','(088) 16738854'),('Victor','van','Dale','(058) 66913705'),('Carly','van','Durham','(08624) 7473704');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Arsenio','van','Griffith','(07238) 5643736'),('Bert','van','Harrington','(04625) 2252266'),('Wayne','van','Lyons','(075) 68070913'),('Walker','van','Moran','(0943) 96766131'),('Caesar','van','Cohen','(02714) 3671835'),('Kylie','van','Mccarthy','(0817) 04563965'),('Hope','van','Hart','(039) 31005917'),('Tara','van','Peck','(031966) 904207'),('Stephen','van','Garrison','(038822) 872856'),('Sydnee','van','Terrell','(056) 02985949');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Kylie','van','Rutledge','(0711) 01457105'),('Oprah','van','Hanson','(0071) 98400619'),('Sharon','van','Mcpherson','(07782) 0629688'),('Daquan','van','Saunders','(038918) 902989'),('George','van','Lawrence','(08389) 0743464'),('Maggy','van','Jordan','(0829) 18723117'),('Imelda','van','Goodwin','(00409) 0877052'),('Wilma','van','Blevins','(030461) 465429'),('Veda','van','Puckett','(08139) 5913894'),('Candice','van','Ramsey','(07369) 9147884');
INSERT INTO Verkoper([Voornaam],[Tussenvoegsel],[Achternaam],[Telefoonnummer]) VALUES('Zeus','van','Miller','(0451) 17950764'),('Patrick','van','Mcintosh','(033096) 546152'),('Xanthus','van','Vinson','(026) 04021894'),('Dahlia','van','Winters','(04417) 7904813'),('Lawrence','van','Carver','(039049) 061252'),('Dennis','van','Morrison','(0157) 30879334'),('Zachary','van','Blackwell','(0638) 85336327'),('Dennis','van','Sutton','(018) 12997491'),('Constance','van','Murphy','(0734) 55233925'),('Kay','van','Fitzgerald','(08035) 1526207');


