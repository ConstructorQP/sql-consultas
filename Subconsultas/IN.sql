SELECT * 
    FROM Productos
    WHERE id_producto IN (
        SELECT id_producto 
        FROM Pedido 
        WHERE Descuento >= 0.5
    );

/* DEVUELVE PRODUCTOS VENDIDOS CON DESCUENTO IGUAL O MAYOR AL 50% */

SELECT nombre, apellido, ciudad
    FROM ejemplo.personas 
    WHERE ciudad IN (
        SELECT ciudad
        FROM ejemplo.empresa
    );