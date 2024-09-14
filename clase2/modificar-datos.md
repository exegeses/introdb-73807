# Modificación de registros dentro de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis:  

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo3 = valor3    
       WHERE campoID = valorID;       

> Ejemplo práctico: 

    UPDATE personas  
        SET  
            apellido = 'González'  
        WHERE id = 3; 