SELECT nombre FROM clientes
WHERE EXISTS (
    SELECT * 
    FROM Pedidos
    WHERE Pedidos.id_cliente = Clientes-id_cliente
);

/*Devuelve clientes que han hecho al menos una compra*/

SELECT p.nombre, p.apellido, p.ciudad
FROM ejemplo.personas p
WHERE EXISTS (
    SELECT *
    FROM ejemplo.empresa e
    WHERE e.ciudad = p.ciudad
);