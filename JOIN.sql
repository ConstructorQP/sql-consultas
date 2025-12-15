/*SCRIPT CREACIÓN DE TABLA*/

    CREATE TABLE ejemplo.departamento
	( 
		ID_Dpto INT PRIMARY KEY,
        Nombre_Dpto VARCHAR(50)
	);
    
	CREATE TABLE ejemplo.empleado
	(	
		ID INT PRIMARY KEY,
		Apellidos VARCHAR (50),
		ID_Dpto INT,
		FOREIGN KEY (ID_Dpto) REFERENCES departamento (ID_Dpto)
	);
    
INSERT INTO `ejemplo`.`departamento` (`ID_Dpto`, `Nombre_Dpto`) VALUES ('10', 'CONTABILIDAD');
INSERT INTO `ejemplo`.`departamento` (`ID_Dpto`, `Nombre_Dpto`) VALUES ('20', 'INFORMÁTICA');
INSERT INTO `ejemplo`.`departamento` (`ID_Dpto`, `Nombre_Dpto`) VALUES ('30', 'PRODUCCIÓN');
INSERT INTO `ejemplo`.`departamento` (`ID_Dpto`, `Nombre_Dpto`) VALUES ('40', 'COMERCIAL');

INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('369', 'SANCHEZ', '20');
INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('499', 'ARROYO', '30');
INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('566', 'JIMENEZ', '20');
INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('654', 'MARTIN', '');
INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('698', 'GIL', '30');
INSERT INTO `ejemplo`.`empleado` (`ID`, `Apellidos`, `ID_Dpto`) VALUES ('782', 'CEREZO', '10');

/*CONSULTA*/

SELECT E.Apellidos, E.ID_Dpto, D.ID_Dpto, D.Nombre_Dpto
FROM Empleado as E
INNER JOIN Departamento as D ON E.ID_Dpto = D.ID_Dpto;

/*RIGHT, LEFT OR INNER */
