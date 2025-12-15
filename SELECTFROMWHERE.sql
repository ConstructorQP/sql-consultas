Select nombre AS Nombre_propio, apellido AS Primer_Apellido /*Cambiar el nombre y apellido a nivel usuario*/
FROM ejemplo.persona                                        /* ELEGIMOS EL PATH*/
WHERE ciudad='Madrid' AND id>=3 AND apellido='Martinez'     /* EL WHERE NOS AYUDARÁ A ENCONTRAR UNA PALABRA ESPECÍFICA EN UN CAMPO*/
ORDER BY nombre ASC;                                        /* ORDENAMOS ASCENDEMENTE*/
