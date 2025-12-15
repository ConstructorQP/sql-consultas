/*OPERADORES

IS NULL -----------------------------   */  SELECT id, nombre, apellido
                                            FROM ejemplo.persona        
                                            WHERE apellido IS NULL; /*
                                
IS NOT NULL -------------------------   */  SELECT id, nombre, apellido, ciudad
                                            FROM ejemplo.persona        
                                            WHERE ciudad IS NOT NULL OR apellido IS NULL; /*

COALESCE ----------------------------   */  SELECT id, nombre, COALESCE(apellido, 'Sin apellido') AS apellido_mostrado  
                                            FROM ejemplo.persona; /*
                                        
NULLIF ------------------------------   */  SELECT id, nombre, NULLIF(ciudad, 'Madrid') AS ciudad_filtrada
                                            FROM ejemplo.persona;
                                            
