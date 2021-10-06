create table usuario
(
    ci varchar(10) primary key,
    user varchar(50),
    password varchar(50)
    id_rol varchar(15)
)
create table estudiante
(
    ci varchar(10) primary key,
    matricula varchar(50)
)

create table docente
(
    ci varchar(10) primary key,
    cargah varchar(30),
    sigla varchar(40)
)
create table persona
(
    ci varchar(10) primary key,
    nombre varchar(50),
    paterno varchar(50),
    fechanaci date,
    departamento varchar(2)
)
create table nota
(
    ci varchar(10) primary key,
    sigla varchar(20),
    nota1 int(30),
    nota2 int(30),
    nota3 int(40),
    notafinal int(100)
)

create table rol
(
    idrol varchar(10) primary key,
    descripcion varchar(50)
)
