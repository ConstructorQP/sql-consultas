SELECT *
FROM ejemplo.persona
WHERE ciudad = 'Madrid' AND id<3 AND apellido='Martínez'    /*IMPLANTAMOS FILTROS O CONDICIONES*/
ORDER BY nombre ASC;