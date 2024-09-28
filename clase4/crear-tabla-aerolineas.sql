#
create table aerolineas2
(
    id smallint unsigned auto_increment primary key not null,
    aerolinea varchar(60) unique not null,
    url varchar(60) not null,
    telefono varchar(50) not null,
    activo boolean not null
);
