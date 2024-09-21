# creación de tabla precios

/*
Vamos a crear una tabla con el objetivo de comparar
la exactitud entre un tipo de dato **float**
y un tipo de dato **decimal**
*/

create table precios
(
    id tinyint unsigned auto_increment primary key  not null,
    aproximado float not null,
    exacto decimal( 10, 2 ) not null
);

insert into precios
    VALUES
        (DEFAULT, 20.5, 20.5),
        (DEFAULT, 28.7, 28.7),
        (DEFAULT, 100.5, 100.5),
        (DEFAULT, 26.4, 26.4),
        (DEFAULT, 70.6, 70.6),
        (DEFAULT, 73, 73),
        (DEFAULT, 31.2, 31.2),
        (DEFAULT, 7.27, 7.27);

-- demostraci´´on
SELECT SUM(aproximado), SUM(exacto)
    FROM precios;