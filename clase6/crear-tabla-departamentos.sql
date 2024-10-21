create table departamentos
(
    idDepartamento tinyint unsigned auto_increment primary key  not null,
    depNombre varchar(45) unique not null
);

--
insert into departamentos
    values
    ( default, 'Administración' ),
    ( default, 'Compras' ),
    ( default, 'ventas' ),
    ( default, 'Atención al público' ),
    ( default, 'Gerencia general' ),
    ( default, 'Marketing' );