# Filtrado de recultados

> Filtrar resultados de una consulta significa traer únicamente los registros que cumplen con una condición
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición


    SELECT * 
        FROM nombreTabla
        WHERE condicion;

    SELECT nombreCampo2, nombreCampo4 
        FROM nombreTabla
        WHERE condicion;

> Traer todos los destinos con un precio hasta 8600

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8600;  

> Traer todos los destinos con un precio 
> entre 6500 y 8600

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6500   
        AND precio <= 8600;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio	BETWEEN 6500 AND 8600;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio	>= 6500 
        AND precio <= 8600  
        AND idRegion = 5;
			
> Traer todos los destinos de la región 5

    SELECT aeropuerto, precio  
      FROM destinos
      WHERE idRegion = 5;

> Traer todos los destinos de la región 5
> y además de la región 7

    SELECT aeropuerto, precio
      FROM destinos
      WHERE idRegion = 5
        OR idRegion = 7;	

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN( 5, 7 );  

