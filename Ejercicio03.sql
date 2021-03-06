Create database Ejercicio03
use Ejercicio03


ALTER TABLE Carretera
	ADD  PRIMARY KEY  CLUSTERED (IdCarretera ASC)
go

ALTER TABLE Categoria
	ADD  PRIMARY KEY  CLUSTERED (Categoria ASC,IdCarretera ASC)
go

ALTER TABLE Comuna
	ADD  PRIMARY KEY  CLUSTERED (IdComuna ASC)
go

ALTER TABLE Tramo
	ADD  PRIMARY KEY  CLUSTERED (IdTramo ASC)
go

ALTER TABLE tramo
	ADD  PRIMARY KEY  CLUSTERED (IdTramo ASC)
go

ALTER TABLE tramo
	ADD  PRIMARY KEY  CLUSTERED (IdTramo ASC)
go

ALTER TABLE Tramo_Carrtera
	ADD  PRIMARY KEY  CLUSTERED (IdCarretera ASC,IdTramo ASC)
go

ALTER TABLE Tramo_comuna
	ADD  PRIMARY KEY  CLUSTERED (IdTramo ASC,IdComuna ASC)
go


ALTER TABLE Categoria
	ADD  FOREIGN KEY (IdCarretera) REFERENCES Carretera(IdCarretera)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE tramo
	ADD  FOREIGN KEY (IdTramo) REFERENCES Tramo(IdTramo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE tramo
	ADD  FOREIGN KEY (IdTramo) REFERENCES Tramo(IdTramo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Tramo_Carrtera
	ADD  FOREIGN KEY (IdTramo) REFERENCES Tramo(IdTramo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Tramo_Carrtera
	ADD  FOREIGN KEY (IdCarretera) REFERENCES Carretera(IdCarretera)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Tramo_comuna
	ADD  FOREIGN KEY (IdTramo) REFERENCES Tramo(IdTramo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Tramo_comuna
	ADD  FOREIGN KEY (IdComuna) REFERENCES Comuna(IdComuna)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
