# Consultas en SQL

## Consultas a servidor de base de datos

    -- listar todas las bases de datos   
    SHOW DATABASES;  

    -- listar todas las tablas dentro de una base de datos    
    SHOW TABLES;  

    -- mostrar la estructura de una tabla    
    DESCRIBE nombreTabla;  

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- Mostrar la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de base de datos

> Para realizar consultas a una tabla dentro de una base de datos 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla; 

    SELECT * FROM personas;  
    SELECT * FROM destinos;  

> Cuándo hacemos un SELECT * FROM nombreTabla lo que obtenemos es el listado de todos los registros de todas las columnas de esa tabla

> Si queremos traer los datos de **algunas** columnas
> debemos mencionar los nombres de estas columnas separadas por comas en lugar del * (antes del FROM)

    SELECT nombreColumna, nombreColumna3    
        FROM nombreTabla;  

    SELECT aeropuerto, precio  
        FROM destinos;  

### Orden de resultados

> Para ordenar los resultados de una consulta 
> utilizamos **ORDER BY** 
> y luego mencionamos el nombre de la columna que vamos a usar para ordenar

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY precio DESC; 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;  
