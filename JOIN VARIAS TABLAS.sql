SELECT 
	CONCAT(p.nombre, ' ', p.apellido)AS personas,
    e.Apellidos AS Empleado,
    p.ciudad
FROM ejemplo.personas p

INNER JOIN ejemplo.empresa emp
	ON p.ciudad = emp.ciudad				-- Coincidencia de ciudad

INNER JOIN ejemplo.departamento d
	ON d.ID_Empresa = emp.id				-- Departamento pertenece a esa empresa

INNER JOIN ejemplo.empleado e
	ON e.ID_Dpto = d.ID_Dpto;				-- Empleado trabaja en ese departamento+