SELECT ciudad, COUNT(Nombre), AVG(edad)             -- Count cuenta la cantidad de personas que viven en una ciudad, y AVG hace la media de edad.
FROM ejemplo.personas
GROUP BY ciudad;

SELECT ciudad, COUNT(Nombre), MIN(edad)             -- Min nos da la menor edad
FROM ejemplo.personas
GROUP BY ciudad;

SELECT ciudad, COUNT(Nombre), MAX(edad)             -- Min nos da la mayor edad
FROM ejemplo.personas
GROUP BY ciudad;

SELECT ciudad, COUNT(Nombre), AVG(edad) AS Edad_Media,
    MIN(edad) AS Edad_Minima, MAX(edad) AS Edad_Maxima
FROM personas
    GROUP BY Ciudad;