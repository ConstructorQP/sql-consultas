SELECT nombre, edad
FROM ejemplo.personas
WHERE edad > (SELECT AVG(edad) FROM ejemplo.personas);

------CREAMOS UNA SUBCONSULTA DENTRO DE OTRA

SELECT 
	e.Apellidos,
    d.Nombre_Dpto
FROM ejemplo.empleado e
INNER JOIN ejemplo.Departamento d
	ON e.ID_Dpto = d.ID_Dpto
WHERE e.ID_Dpto = (
	SELECT ID_Dpto
    FROM ejemplo.Empleado
    GROUP BY ID_Dpto
    ORDER BY COUNT(*) DESC
    LIMIT 1
    );