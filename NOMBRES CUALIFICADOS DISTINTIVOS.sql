SELECT P.id, P.nombre, NULLIF(P.ciudad, 'Madrid') AS ciudad_filtrada
FROM persona AS P;

