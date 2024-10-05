# práctica de modificación de estructura

## tabla aerolíneas
ALTER TABLE aerolineas
    CHANGE id idAerolinea
        smallint unsigned
        primary key auto_increment
        not null,
    MODIFY aerolinea varchar(40)
        unique not null,
    MODIFY url varchar(60) not null,
    MODIFY telefono varchar(40) not null,
    MODIFY activo boolean not null;

## checkeo
DESC aerolineas;

## Agregar clave foránea de la tabla destinos a la tabla aerolíneas
ALTER TABLE destinos
    ADD CONSTRAINT fk_aerolineas
    foreign key (idAerolinea)
        references aerolineas (idAerolinea);

/*
ALTER TABLE destinos
    ADD foreign key (idAerolinea)
            references aerolineas (idAerolinea);
*/