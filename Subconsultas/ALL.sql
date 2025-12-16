SELECT nombre, apellido, edad
FROM ejemplo.personas p
WHERE edad > ALL (
    SELECT edad
    FROM ejemplo.personas
    WHERE ciudad ='Madrid'
);