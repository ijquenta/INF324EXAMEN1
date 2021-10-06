
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

create table materia
(
    sigla varchar(30) primary key,
    descripcion varchar(80),
    idcarrera varchar(20),
    iddoc varchar(10)
)
create table carrera
(
    idcarrera varchar(20) primary key,
    nombrec varchar(35)
    
)


INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `fechanaci`, `departamento`) VALUES ('14', 'nicolas', 'escarzo', '2000-02-13', '02')

insert into persona values('14', 'nicolas', 'escarzo', '2000-02-13', '02')
insert into persona values('15', 'wallas', 'quispe', '1999-09-14', '02')
insert into persona values('16', 'daniel', 'velarde', '1998-07-22', '01')
insert into persona values('17', 'yosse', 'colque', '1998-02-13', '01')
insert into persona values('18', 'neil', 'graneros', '1998-02-18', '02')
insert into persona values('19', 'jesus', 'quenta', '1998-09-11', '02')
insert into persona values('20', 'yoshua', 'quenta', '1998-07-23', '02')



insert into estudiante values('14','14123')
insert into estudiante values('15','15321')
insert into estudiante values('16','16456')
insert into estudiante values('17','17654')
insert into estudiante values('18','18789')
insert into estudiante values('19','19987')
insert into estudiante values('20','20135')


insert into nota values('12', 'INF-271', '30', '30', '40', '100')
insert into nota values('12', 'INF-272', '19', '30', '21', '70')
insert into nota values('12', 'INF-320', '30', '30', '40', '100')
insert into nota values('12', 'INF-314', '30', '30', '40', '100')
insert into nota values('12', 'INF-329', '22', '32', '25', '79')
insert into nota values('15', 'INF-324', '22', '32', '25', '79')
insert into nota values('16', 'INF-324', '15', '16', '25', '56') 
insert into nota values('17', 'INF-324', '21', '19', '30', '70')
insert into nota values('18', 'INF-324', '12', '21', '25', '58')
insert into nota values('19', 'INF-324', '30', '19', '12', '61')
insert into nota values('20', 'INF-324', '19', '30', '21', '70')



select AVG(n.notafinal)LP
from nota n, estudiante e, persona p
where n.ci = e.ci
and p.departamento = '02'
and p.ci = e.ci


SELECT tmp1.CBBA, tmp2.LP, tmp3.SZ
FROM (select AVG(n.notafinal)CBBA
      from nota n, estudiante e, persona p
      where n.ci = e.ci
      and p.departamento = '01'
      and p.ci = e.ci)tmp1,(select AVG(n.notafinal)LP
                           from nota n, estudiante e, persona p
                           where n.ci = e.ci
                           and p.departamento = '02'
                           and p.ci = e.ci)tmp2,(select AVG(n.notafinal)SZ
                                                 from nota n, estudiante e, persona p
                                                 where n.ci = e.ci
                                                 and p.departamento = '03'
                                                 and p.ci = e.ci)tmp3



INSERT INTO `materia` (`sigla`,`descripcion`,`idcarrera`,`iddoc`) VALUES 
('INF113', 'LABORATORIO DE COMPUTACION', '10', '1020'),
('MAT114', 'MATEMATICA DISCRETA I', '20', '1040'),
('MAT115', 'ANALISIS MATEMATICO I', '20', '1041'),
('MAT125', 'ANALISIS MATEMATICO II', '20', '1042'),
('INF131', 'ESTRUCTURA DE DATOS Y ALGORITMOS', '10', '1019'),
('LAB131', 'LABORATORIO DE INF-131', '10', '1012'),
('EST133', 'ESTADISTICA I', '30', '1039'),
('INF142', 'FUNDAMENTOS DIGITALES', '10', '1018'),
('EST155', 'INVESTIGACION DE OPERACIONES', '30', '1022'),
('INF161', 'DISENO Y ADMINISTRACION DE BD', '10', '1007'),
('INF162', 'ANALISIS Y DISENO DE SI', '10', '1009'),
('INF271', 'TEORIA DE SISTEMAS Y MODELOS', '10', '1038'),
('INF272', 'TALLER DE BASE DE DATOS', '10', '1034'),
('INF273', 'TELEMATICA', '10', '97'),
('LAB273', 'LABORATORIO DE inf273', '10', '1030'),
('INF281', 'TALLER DE SISTEMAS DE INFORMACION', '10', '1011'),
('INF282', 'ESPECIFICACIONES FORMALES', '10', '1017');

INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `fechanaci`, `departamento`) VALUES
('21', 'Pepe', 'Flores', '96-01-23', '01'),
('22', 'Juan', 'Machaca', '96-01-23', '02'),
('23', 'Oscar', 'Tito', '94-01-23', '04'),
('24', 'Jose', 'Rosas', '94-01-23', '09'),
('25', 'Dana', 'Roca', '92-01-23', '04'),
('26', 'Hernesto', 'Rita', '90-01-23', '09'),
('27', 'Doris', 'Flores', '92-01-23', '04'),
('28', 'Pedro', 'Choque', '94-01-23', '05'),
('29', 'Gabriel', 'Sosa', '95-01-23', '04'),
('30', 'Wilson', 'Soria', '95-01-23', '07'),
('31', 'Fabian', 'Quispe', '96-01-23', '09'),
('32', 'Jorge', 'Tabares', '95-01-23', '04'),
('33', 'Danny', 'Ruiz', '94-01-23', '08'),
('34', 'Fernando', 'Benites', '94-01-23', '08'),
('35', 'Oliver', 'Bilbao', '93-01-23', '09'),
('36', 'Grover', 'Balboa', '94-01-23', '04'),
('37', 'Ruben', 'Torrico', '95-01-23', '05'),
('39', 'Marta', 'Nosca', '94-01-23', '06'),
('40', 'Hilda', 'Rios', '95-01-23', '07'),
('41', 'Maria', 'Castro', '94-06-04', '04'),
('42', 'Paul', 'Zeballos', '96-03-03', '09'),
('43', 'Carlos', 'Silva', '97-02-28', ''),
('44', 'David', 'Duran', '95-04-07', '04'),
('45', 'Silvia', 'Cusi', '97-07-30', '02'),
('46', 'Efrain', 'Quiroga', '96-12-03', '05'),
('47', 'Sharon', 'Bautista', '93-10-13', '04'),
('48', 'Diana', 'Aruquipa', '96-01-20', '08'),
('49', 'Angela', 'Lopez', '93-05-10', '04'),
('50', 'Fabio', 'Jimenez', '94-05-01', '08');

INSERT INTO `usuario` (`ci`, `user`, `password`, `id_rol`) VALUES 
('23', 'OTito', 'OTito','2'),
('24', 'JRosas', 'JRosas','2'),
('25', 'DRoca', 'DRoca','2'),
('26', 'HRita', 'HRita','2'),
('27', 'DFlores', 'DFlores','2'),
('28', 'PChoque', 'PChoque','2'),
('29', 'GSosa', 'GSosa','2'),
('30', 'WSoria', 'WSoria','2'),
('31', 'FQuispe', 'FQuispe','2'),
('32', 'JTabares', 'JTabares','2'),
('33', 'DRuiz', 'DRuiz','2'),
('34', 'FBenites', 'FBenites','2'),
('35', 'OBilbao', 'OBilbao','2'),
('36', 'GBalboa', 'GBalboa','2'),
('37', 'RTorrico', 'RTorrico','2'),
('39', 'MNosca', 'MNosca','2'),
('40', 'HRios', 'HRios','2'),
('41', 'MCastro', 'MCastro','2'),
('42', 'PZeballos', 'PZeballos','2'),
('43', 'CSilva', 'CSilva','2'),
('44', 'DDuran', 'DDuran','2'),
('45', 'SCusi', 'SCusi','2'),
('46', 'EQuiroga', 'EQuiroga','2'),
('47', 'SBautista', 'SBautista','2'),
('48', 'DAruquipa', 'DAruquipa','2'),
('49', 'ALopez', 'ALopez','2'),
('50', 'FJimenez', 'FJimenez','2');




INSERT INTO `usuario` (`ci`, `user`, `password`, `id_rol`) VALUES 
('1007', 'MCarlos', 'MCarlos','1'),
('1009', 'TJose', 'TJose','1'),
('1011', 'CBrigida', 'CBrigida','1'),
('1012', 'PWilly', 'PWilly','1'),
('1015', 'FJhonny', 'FJhonny','1'),
('1016', 'FRamiro', 'FRamiro','1'),
('1017', 'CFranz', 'CFranz','1'),
('1018', 'CYohoni', 'CYohoni','1'),
('1019', 'HCarmen', 'HCarmen','1'),
('1020', 'PDiaz', 'PDiaz','1'),
('1022', 'BMariaca', 'BMariaca','1'),
('1029', 'TPomier', 'TPomier','1'),
('1030', 'CCandia', 'CCandia','1'),
('1034', 'RPacheco', 'RPacheco','1'),
('1036', 'TDiaz', 'TDiaz','1'),
('1038', 'ZAbasto', 'ZAbasto','1'),
('1039', 'VLopez', 'VLopez','1');


INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `fechanaci`, `departamento`) VALUES
('1007', 'Carlos', 'Mullisaca', '67-02-10', '01'),
('1009', 'Jose', 'Tapia', '70-12-17', '02'),
('1011', 'Brigida', 'Carvajal', '63-03-05', '04'),
('1012', 'Willy', 'Portugal', '70-04-23', '09'),
('1015', 'Jhonny', 'Felipez', '67-12-25', '04'),
('1016', 'Ramiro', 'Flores', '70-06-28', '09'),
('1017', 'Franz', 'Cuevas', '75-05-02', '04'),
('1018', 'Yohoni', 'Cuenca', '80-08-02', '05'),
('1019', 'Carmen', 'Huanca', '70-09-01', '04'),
('1020', 'Diaz', 'Pozo', '70-10-05', '07'),
('1022', 'Mariaca', 'Burgoa', '78-01-02', '09'),
('1029', 'Pomier', 'Teran', '69-10-04', '04'),
('1030', 'Candia', 'Contreras', '65-01-15', '08'),
('1034', 'Pacheco', 'Reyes', '75-06-30', '08'),
('1036', 'Diaz', 'Torrico', '70-10-14', '09'),
('1038', 'Abasto', 'Zeballos', '80-12-25', '04'),
('1039', 'Lopez', 'Velasquez', '63-11-24', '05'),
('1040', 'Hugo', 'Paredes', '67-02-10', '01'),
('1041', 'Hebe', 'Chambi', '70-12-17', '02'),
('1042', 'Hernan', 'Callisaya', '63-03-05', '04');


INSERT INTO `usuario` (`ci`, `user`, `password`, `id_rol`) VALUES 
('1040', 'PHugo', 'PHugo','1'),
('1041', 'CHebe', 'CHebe','1'),
('1042', 'CHernan', 'CHernan','1');

INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `fechanaci`, `departamento`) VALUES
('1040', 'Hugo', 'Paredes', '67-02-10', '01'),
('1041', 'Hebe', 'Chambi', '70-12-17', '02'),
('1042', 'Hernan', 'Callisaya', '63-03-05', '04');


INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES 
('13', 'LAB111', '30', '30', '30', '90'),
('13', 'INF111', '30', '30', '30', '90'),
('14', 'INF324', '30', '30', '40', '100'),
('15', 'INF324', '22', '32', '25', '79'),
('16', 'INF324', '15', '16', '25', '56'),
('17', 'INF324', '21', '19', '30', '70'),
('18', 'INF324', '12', '21', '25', '58'),
('19', 'INF324', '30', '19', '12', '61'),
('20', 'INF324', '19', '30', '21', '70'),
('12', 'INF271', '30', '30', '40', '100'),
('12', 'INF272', '19', '30', '21', '70'),
('12', 'INF320', '30', '30', '40', '100'),
('12', 'INF314', '30', '30', '40', '100'),
('12', 'INF324', '33', '33', '33', '99'), 
('23', 'INF324', '25', '16', '21', '62'), 
('24', 'INF324', '30', '30', '40', '100'), 
('25', 'INF272', '11', '15', '25', '51'), 
('26', 'INF324', '30', '10', '40', '80'), 
('27', 'INF271', '15', '25', '16', '56'), 
('28', 'INF320', '29', '30', '40', '99'), 
('29', 'INF320', '15', '15', '15', '45'), 
('30', 'INF324', '15', '10', '15', '40'), 
('31', 'INF324', '21', '29', '30', '80'), 
('32', 'INF272', '25', '16', '40', '80'), 
('33', 'INF271', '30', '19', '21', '70'), 
('34', 'INF272', '19', '15', '25', '49'), 
('35', 'INF272', '15', '15', '40', '70'), 
('36', 'INF324', '29', '19', '40', '88'), 
('37', 'INF272', '15', '15', '40', '70'), 
('39', 'INF271', '25', '16', '15', '56'), 
('40', 'INF271', '19', '21', '15', '55'), 
('41', 'INF324', '15', '30', '25', '70'), 
('42', 'INF271', '30', '29', '20', '79'), 
('43', 'INF324', '15', '10', '40', '65'), 
('44', 'INF271', '20', '20', '30', '50'), 
('45', 'INF320', '21', '21', '30', '72'), 
('46', 'INF271', '10', '30', '29', '69'), 
('47', 'INF272', '25', '16', '20', '61'), 
('48', 'INF271', '30', '15', '10', '55'), 
('49', 'INF320', '30', '25', '16', '71'), 
('50', 'INF272', '25', '30', '29', '84');

('23', 'OTito', 'OTito','2'),
('24', 'JRosas', 'JRosas','2'),
('25', 'DRoca', 'DRoca','2'),
('26', 'HRita', 'HRita','2'),
('27', 'DFlores', 'DFlores','2'),
('28', 'PChoque', 'PChoque','2'),
('29', 'GSosa', 'GSosa','2'),
('30', 'WSoria', 'WSoria','2'),
('31', 'FQuispe', 'FQuispe','2'),
('32', 'JTabares', 'JTabares','2'),
('33', 'DRuiz', 'DRuiz','2'),
('34', 'FBenites', 'FBenites','2'),
('35', 'OBilbao', 'OBilbao','2'),
('36', 'GBalboa', 'GBalboa','2'),
('37', 'RTorrico', 'RTorrico','2'),
('39', 'MNosca', 'MNosca','2'),
('40', 'HRios', 'HRios','2'),
('41', 'MCastro', 'MCastro','2'),
('42', 'PZeballos', 'PZeballos','2'),
('43', 'CSilva', 'CSilva','2'),
('44', 'DDuran', 'DDuran','2'),
('45', 'SCusi', 'SCusi','2'),
('46', 'EQuiroga', 'EQuiroga','2'),
('47', 'SBautista', 'SBautista','2'),
('48', 'DAruquipa', 'DAruquipa','2'),
('49', 'ALopez', 'ALopez','2'),
('50', 'FJimenez', 'FJimenez','2');


ci
matricula

INSERT INTO `estudiante` (`ci`, `matricula`) VALUES
('12', '1747107'),
('13', '1747106'),
('14', '14123'),
('15', '15321'),
('16', '16456'),
('17', '17654'),
('18', '18789'),
('19', '19987'),
('20', '20135'),

INSERT INTO `estudiante` (`ci`, `matricula`) VALUES
('23','2323'),
('24','2424'),
('25','2525'),
('26','2626'),
('27','2727'),
('28','2828'),
('29','2929'),
('30','3030'),
('31','3131'),
('32','3232'),
('33','3333'),
('34','3434'),
('35','3535'),
('36','3636'),
('37','3737'),
('39','3939'),
('40','4040'),
('41','4141'),
('42','4242'),
('43','4343'),
('44','4444'),
('45','4545'),
('46','4646'),
('47','4747'),
('48','4848'),
('49','4949'),
('50','5050');


INSERT INTO `docente` (`ci`, `cargah`) VALUES 
('99','15','INF324'),
('97','10','INF273'),
('98','14','INF112'),
('1007','11','INF161'),
('1009','21','INF162'),
('1011','41','INF281'),
('1012','91','LAB131'),
('1015','41','INF111'),
('1016','91','INF320'),
('1017','41','INF282'),
('1018','51','INF142'),
('1019','41','INF131'),
('1020','71','INF113'),
('1022','91','EST155'),
('1029','41','LAB111'),
('1034','81','INF272'),
('1036','91','INF314'),
('1038','41','INF271'),
('1039','51','EST133'),
('1040','11','MAT114'),
('1041','21','MAT115'),
('1042','41','MAT125');


