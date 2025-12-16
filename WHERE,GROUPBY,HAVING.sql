SELECT ciudad, COUNT(id) AS Habitantes, AVG(Edad) AS Edad_Media,
    MIN(Edad) AS Edad_Minima, MAX(Edad) AS Edad_Maxima
FROM ejemplo.personas
GROUP BY Ciudad
HAVING AVG(Edad)>20;

--------------------------------------------------------------------------------------------------------

SELECT 
	d.Nombre_Dpto,
    COUNT(e.ID) AS Cantidad_Empleados
FROM ejemplo.Departamento d
INNER JOIN ejemplo.Empleado e
	ON d.ID_Dpto = e.ID_Dpto
GROUP BY d.Nombre_Dpto
HAVING COUNT(e.ID) > 1;