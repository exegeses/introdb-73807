# Insertar datos (registro) dentro de una tabla

> En SQL tenemos tres maneras principales de insertar datos en una tabla.
> Las tres maneras comienzan con **INSERT INTO nombreTabla**

## Sintáxis usando SET  

> Sintáxis: 
 
    INSERT INTO nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampo4 = valor4;  

> Ejemplo práctico: 

    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';


    INSERT INTO personas  
        SET  
            apellido = 'Gonz´´alez',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';


## Sintáxis completa (se mencionan los campos) 

> Sintáxis:

    INSERT INTO nombreTabla  
        ( col2, col3, col4, col5 )  
      VALUES  
        ( valor2, valor3, valor4, valor5 );


> Ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );



## Sintáxis simplificada (NO se mencionan los campos)

> Sintáxis:

    INSERT INTO nombreTabla  
        VALUES  
            ( valorID, valor2, valor3, valor4 );

> Ejemplo práctico:

    INSERT INTO personas  
        VALUES  
            ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );

