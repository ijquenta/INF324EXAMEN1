SELECT SUM(CASE departamento WHEN '01' THEN 1 else 0 end) LP, 
       SUM(CASE departamento WHEN '02' THEN 1 else 0 end) ORU,
       SUM(CASE departamento WHEN '03' THEN 1 else 0 end) SZ,
       SUM(CASE departamento WHEN '04' THEN 1 else 0 end) CBBA,
       SUM(CASE departamento WHEN '05' THEN 1 else 0 end) CH,
       SUM(CASE departamento WHEN '06' THEN 1 else 0 end) PD,
       SUM(CASE departamento WHEN '07' THEN 1 else 0 end) BN,
       SUM(CASE departamento WHEN '08' THEN 1 else 0 end) TJ,
       SUM(CASE departamento WHEN '09' THEN 1 else 0 end) PT
FROM persona p   


SELECT p.departamento, AVG(n.notafinal) Media
FROM nota n, persona p
WHERE n.ci = p.ci
GROUP by p.departamento


SELECT AVG(CASE departamento WHEN '01' THEN n.notafinal end) LP, 
       AVG(CASE departamento WHEN '02' THEN n.notafinal end) ORU,
       AVG(CASE departamento WHEN '03' THEN n.notafinal end) SZ,
       AVG(CASE departamento WHEN '04' THEN n.notafinal end) CBBA,
       AVG(CASE departamento WHEN '05' THEN n.notafinal end) CH,
       AVG(CASE departamento WHEN '06' THEN n.notafinal end) PD,
       AVG(CASE departamento WHEN '07' THEN n.notafinal end) BN,
       AVG(CASE departamento WHEN '08' THEN n.notafinal end) TJ,
       AVG(CASE departamento WHEN '09' THEN n.notafinal end) PT
FROM persona p, nota n
where p.ci = n.ci  










insert into persona values(14, 'nicolas', 'escarzo', '2000-02-13', '02');
insert into persona values(15, 'wallas', 'quispe', '1999-09-14', '02');
insert into persona values(16, 'daniel', 'velarde', '1998-07-22', '01');
insert into persona values(17, 'yosse', 'colque', '1998-02-13', '01');
insert into persona values(18, 'neil', 'graneros', '1998-02-18', '02');
insert into persona values(19, 'jesus', 'quenta', '1998-09-11', '02');
insert into persona values(20, 'yoshua', 'quenta', '1998-07-23', '02');

INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('16', 'INF324', '15', '16', '25', '56');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('17', 'INF324', '21', '19', '30', '70');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('18', 'INF324', '12', '21', '25', '58');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('19', 'INF324', '30', '19', '12', '61');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('20', 'INF324', '19', '30', '21', '70');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('12', 'INF271', '30', '30', '40', '100');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('12', 'INF272', '19', '30', '21', '70');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('12', 'INF320', '30', '30', '40', '100');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('12', 'INF314', '30', '30', '40', '100');
INSERT INTO nota (ci, sigla, nota1, nota2, nota3, notafinal) VALUES ('12', 'INF324', '33', '33', '33', '99');



insert into persona values('21', 'Pepe', 'Flores', '', '01');
insert into persona values('22', 'Juan', 'Machaca', '', '02');
insert into persona values('23', 'Oscar', 'Tito', '', '04');
insert into persona values('24', 'Jose', 'Rosas', '', '09');
insert into persona values('25', 'Dana', 'Roca', '', '04');
insert into persona values('26', 'Hernesto', 'Rita', '', '09');
insert into persona values('27', 'Doris', 'Flores', '', '04');
insert into persona values('28', 'Pedro', 'Choque', '', '05');
insert into persona values('29', 'Gabriel', 'Sosa', '', '04');
insert into persona values('30', 'Wilson', 'Soria', '', '07');
insert into persona values('31', 'Fabian', 'Quispe', '', '09');
insert into persona values('32', 'Jorge', 'Tabares', '', '04');
insert into persona values('33', 'Danny', 'Ruiz', '', '08');
insert into persona values('34', 'Fernando', 'Benites', '', '08');
insert into persona values('35', 'Oliver', 'Bilbao', '', '09');
insert into persona values('36', 'Grover', 'Balboa', '', '04');
insert into persona values('37', 'Ruben', 'Torrico', '', '05');
insert into persona values('39', 'Marta', 'Nosca', '', '06');
insert into persona values('40', 'Hilda', 'Rios', '', '07');
insert into persona values('41', 'Maria', 'Castro', '', '04');
insert into persona values('42', 'Paul', 'Zeballos', '', '09');
insert into persona values('43', 'Carlos', 'Silva', '', '07');
insert into persona values('44', 'David', 'Duran', '', '04');
insert into persona values('45', 'Silvia', 'Cusi', '', '02');
insert into persona values('46', 'Efrain', 'Quiroga', '', '05');
insert into persona values('47', 'Sharon', 'Bautista', '', '04');
insert into persona values('48', 'Diana', 'Aruquipa', '', '08');
insert into persona values('49', 'Angela', 'Lopez', '', '04');
insert into persona values('50', 'Fabio', 'Jimenez', '', '08');



INSERT INTO nota  VALUE
INSERT INTO nota  VALUES('13', 'LAB111', '30', '30', '30', '90');
INSERT INTO nota  VALUES('13', 'INF111', '30', '30', '30', '90');
INSERT INTO nota  VALUES('14', 'INF324', '30', '30', '40', '100');
INSERT INTO nota  VALUES('15', 'INF324', '22', '32', '25', '79');
INSERT INTO nota  VALUES('16', 'INF324', '15', '16', '25', '56');
INSERT INTO nota  VALUES('17', 'INF324', '21', '19', '30', '70');
INSERT INTO nota  VALUES('18', 'INF324', '12', '21', '25', '58');
INSERT INTO nota  VALUES('19', 'INF324', '30', '19', '12', '61');
INSERT INTO nota  VALUES('20', 'INF324', '19', '30', '21', '70');
INSERT INTO nota  VALUES('12', 'INF271', '30', '30', '40', '100');
INSERT INTO nota  VALUES('12', 'INF272', '19', '30', '21', '70');
INSERT INTO nota  VALUES('12', 'INF320', '30', '30', '40', '100');
INSERT INTO nota  VALUES('12', 'INF314', '30', '30', '40', '100');
INSERT INTO nota  VALUES('12', 'INF324', '33', '33', '33', '99');
INSERT INTO nota  VALUES('23', 'INF324', '25', '16', '21', '62');
INSERT INTO nota  VALUES('24', 'INF324', '30', '30', '40', '100'); 
INSERT INTO nota  VALUES('25', 'INF272', '11', '15', '25', '51');
INSERT INTO nota  VALUES('26', 'INF324', '30', '10', '40', '80');
INSERT INTO nota  VALUES('27', 'INF271', '15', '25', '16', '56');
INSERT INTO nota  VALUES('28', 'INF320', '29', '30', '40', '99');
INSERT INTO nota  VALUES('29', 'INF320', '15', '15', '15', '45');
INSERT INTO nota  VALUES('30', 'INF324', '15', '10', '15', '40');
INSERT INTO nota  VALUES('31', 'INF324', '21', '29', '30', '80'); 
INSERT INTO nota  VALUES('32', 'INF272', '25', '16', '40', '80'); 
INSERT INTO nota  VALUES('33', 'INF271', '30', '19', '21', '70'); 
INSERT INTO nota  VALUES('34', 'INF272', '19', '15', '25', '49'); 
INSERT INTO nota  VALUES('35', 'INF272', '15', '15', '40', '70'); 
INSERT INTO nota  VALUES('36', 'INF324', '29', '19', '40', '88'); 
INSERT INTO nota  VALUES('37', 'INF272', '15', '15', '40', '70'); 
INSERT INTO nota  VALUES('39', 'INF271', '25', '16', '15', '56'); 
INSERT INTO nota  VALUES('40', 'INF271', '19', '21', '15', '55'); 
INSERT INTO nota  VALUES('41', 'INF324', '15', '30', '25', '70'); 
INSERT INTO nota  VALUES('42', 'INF271', '30', '29', '20', '79'); 
INSERT INTO nota  VALUES('43', 'INF324', '15', '10', '40', '65'); 
INSERT INTO nota  VALUES('44', 'INF271', '20', '20', '30', '50'); 
INSERT INTO nota  VALUES('45', 'INF320', '21', '21', '30', '72'); 
INSERT INTO nota  VALUES('46', 'INF271', '10', '30', '29', '69'); 
INSERT INTO nota  VALUES('47', 'INF272', '25', '16', '20', '61'); 
INSERT INTO nota  VALUES('48', 'INF271', '30', '15', '10', '55'); 
INSERT INTO nota  VALUES('49', 'INF320', '30', '25', '16', '71'); 
INSERT INTO nota  VALUES('50', 'INF272', '25', '30', '29', '84');