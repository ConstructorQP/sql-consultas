/* SCRIPT CREACIÓN TABLA */
    CREATE TABLE ejemplo.empresa
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100),
        ciudad VARCHAR(50)
    );

INSERT INTO ejemplo.empresa(nombre,ciudad) VALUES
    ('Empresa A', 'Madrid'),
    ('Empresa B', 'Barcelona'),
    ('Empresa C', 'Valencia'),
    ('Empresa D', 'Madrid'),
    ('Empresa E', 'Sevilla');

    /*-----------------------------------------------------------*/
    
    SELECT ciudad
    FROM ejemplo.personas
    UNION
    SELECT nombre
    FROM ejemplo.empresa;

    /* GRACIAS AL UNION NO SALDRÁN LOS REPETIDOS */ 