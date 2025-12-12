    SELECT * 
    FROM ejemplo.persona
    WHERE apellido LIKE '%z';                       /* Buscará apellidos que acaben por z*/

    SELECT * 
    FROM ejemplo.persona
    WHERE apellido LIKE 'm%z';                      /* Buscará apellidos que empiecen por M y acaben por z*/

    SELECT *
    FROM ejemplo.persona
    WHERE id BETWEEN 2 AND 4;                       /* Buscará entre ambos numeros*/

    SELECT *
    FROM ejemplo.persona
    WHERE ciudad IN ('Madrid', 'Barcelona');        /* Mostrará solo los campos especificados*/