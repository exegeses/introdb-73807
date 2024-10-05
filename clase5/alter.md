# Modificaciones de estructura de una tabla

## Cambiar el nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreActual nombreNuevo tipoDato características;

> Debemos especificar el tipo de dato
> También tenemos que tener en cuenta y establecer la característica de nulidad si no lo hacemos permitirá datos nulos.

## Cambiar el tipo de dato de una columna

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipoDato características;

> También tenemos que tener en cuenta y establecer la característica de nulidad si no lo hacemos permitirá datos nulos.

## Agregar una nueva columna al final de la tabla

    ALTER TABLE nombreTabla  
        ADD nombreColumna tipoDato características;

## Agregar una nueva columna después de una columna existente

    ALTER TABLE nombreTabla  
        ADD nombreColumna tipoDato características  
        AFTER columnaExistente;  

## Agregar una nueva columna antes de una columna existente (para agregar primary key)

    ALTER TABLE nombreTabla  
        ADD nombreColumna tipoDato características  
        BEFORE columnaExistente;  


## Eliminar una columna

    ALTER TABLE nombreTabla  
        DROP nombreColumna;  

## Agregar clave primaria

    ALTER TABLE nombreTabla    
        MODIFY nombreCampo tipoDato 
            primary key auto_increment not null;

## Agregar clave foránea

    ALTER TABLE nombreTabla  
        ADD CONSTRAINT [ nombre_fk ]  
        foreign key ( colFK ) references  
            nombreTablaSecundaria ( colPK );  


> Lo especificado entre corchetes [] es opcional
> Solemos ponerle un nombre pero este nombre no es obligatorio, podemos no agregarlo