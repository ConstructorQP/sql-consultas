/*SCRIPT CREACIÓN DE TABLA*/
USE ejemplo;
    CREATE TABLE telefonos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        persona_id INT,
        numero VARCHAR(20),
        tipo VARCHAR(20),
        FOREIGN KEY (persona_id) REFRENCES persona (id)
    );

INSERT INTO telefonos (persona_id, numero, tipo) VALUES
    (1, '111-111-111', 'Móvil'),
    (1, '111-222-333','Casa'),
    (2, '222-333-444','Móvil'),
    (3, '333-444-555', 'Trabajo'),
    (4, '444-333-444','Móvil'),
    (5, '555-222-333','Casa'),
    (5, '555-444-333','Trabajo');

/*CONSULTA CARTESIANA*/

SELECT P.nombre, P.apellido, T.numero, T.tipo
FROM ejemplo.personas AS P, ejemplo.telefonos AS T
WHERE P.id = T.persona_id AND T.tipo='Trabajo'
ORDER BY P.nombre DESC;  