SELECT 
	Apellidos AS nombre,
    'Empleado' AS tipo,
    ID_Dpto AS referencia
FROM Empleado
WHERE ID_Dpto = 20 -- Informatica

UNION

SELECT
	nombre AS nombre,
    'Empresa' AS tipo,
    ciudad AS referencia
FROM empresa
WHERE ciudad = 'Madrid';