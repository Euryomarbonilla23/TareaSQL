--3- Crear una tabla (create table - sp_tables - sp_columns - drop table)

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 drop table agenda;


--4- Insertar y recuperar registros de una tabla (insert into - select)
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;

 
--5- Tipos de datos básicos

  if object_id('peliculas')is not null
  drop table peliculas;

 create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select *from peliculas;


--6- Recuperar algunos campos (select)

 if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

exec sp_columns peliculas;

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select titulo,actor from peliculas;

 select titulo,duracion from peliculas;

 select titulo,cantidad from peliculas;
 

--7- Recuperar algunos registros (where)

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_columns agenda;

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Acosta', 'Ana', 'Colon 123', '4234567');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 select *from agenda;

 select *from agenda
  where nombre='Marisa';

 select nombre,domicilio from agenda
  where apellido='Lopez';

 select nombre from agenda
  where telefono='4545454';
  

--8- Operadores relacionales

  if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

exec sp_columns articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

 select *from articulos
  where nombre='impresora';

 select *from articulos
  where precio>=400;

 select codigo,nombre
  from articulos
  where cantidad<30;

 select nombre, descripcion
  from articulos
  where precio<>100;
 
--9- Borrar registros (delete)

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Salas','Susana','Gral. Paz 1234','4123456');

 delete from agenda
 where nombre='Juan';

 delete from agenda
 where telefono='4545454';

 select * from agenda;

 delete from agenda;

 select * from agenda;
 

--10-Actualizar registros (update)

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;

 update agenda set telefono='4445566'
  where telefono='4545454';

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;


--11- Comentarios

if object_id('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15)
 );

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Emece');

 select * from libros --mostramos los registros de libros; 

 select titulo, autor 
 /*mostramos títulos y
 nombres de los autores*/
 from libros;


--12- Valores null (is null)

if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select *from medicamentos
  where laboratorio is null;

 select *from medicamentos
  where laboratorio='';

 select *from medicamentos
  where precio is null;

 select *from medicamentos
  where precio=0;

 select *from medicamentos
  where laboratorio<>'';

 select *from medicamentos
  where laboratorio is not null;

 select *from medicamentos
  where precio<>0;

 select *from medicamentos
  where precio is not null;
  

--13- Clave primaria

  if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=1
  where titulo='Martin Fierro';
  

--14- Campo con atributo Identity

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

exec sp_columns medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

 update medicamentos set codigo=5
  where nombre='Bayaspirina';

 delete from medicamentos
  where codigo=3;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 select *from medicamentos;


--15- Otras características del atributo Identity

if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

  set identity_insert medicamentos on;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(10,'Amoxilina 500','Bayer',15.60,100);

 select ident_seed('medicamentos');

 select ident_incr('medicamentos'); 
 

--16- Truncate table

  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');

 delete from alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select *from alumnos;

 truncate table alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select *from alumnos;


--17- Otros tipos de datos en SQL Server los cuales aprenderemos desde el ejercicio 18 hasta el 20.
--Tipo de dato Texto.
--Tipo de dato Numérico.
--Tipo de dato Fecha.


--18- Tipo de dato (texto)

--Inicio Problema 1.
if object_id('autos') is not null
  drop table autos;

 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

 insert into autos
  values('ACD54','Toyota','1980',150000);
 insert into autos
  values('BCG234','Renault 11','1975',90000);
 insert into autos
  values('ACD333','Peugeot 505','1920',80000);
 insert into autos
  values('DCD123','Renault Clio','1990',80000);
 insert into autos
  values('KCC333','Susuki','1978',75000);
 insert into autos
  values('CVF543','Fiat 128','1979',40000);

 select *from autos
  where modelo='1990';
--Problema 1 Terminado.

--Inicio Problema 2.
   if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  documento char(8),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar (11)
 );

 insert into clientes
  values('2233344','Clifford','Juan','Salcedo','4342345');
 insert into clientes (documento,apellido,nombre,domicilio)
  values('2333344','Jeanne','Anastasia','Castillo');
 insert into clientes
  values('2433344','Garcia','Luisa','Avenida','4558877');
 insert into clientes
  values('2533344','Perez','Ana','Urquiza 444','4789900');

 select *from clientes
  where apellido='Perez';
  --Problema 2 Terminado.


--19- Tipo de dato (texto)

--Inicio Problema 1.
  if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int not null,
  documento char(8),
  nombre varchar(30),
  saldo money,
  primary key (numero)
 );

 insert into cuentas(numero,documento,nombre,saldo)
  values('1234','25666777','Pedro Clifford',580000.60);
 insert into cuentas(numero,documento,nombre,saldo)
  values('2234','27888999','Juan Lopez',-250090);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3346','32111222','jeffrey Sull',10000);

 select *from cuentas
  where saldo<4000;

 select numero,saldo from cuentas
  where nombre='Juan Lopez';

 select *from cuentas
  where saldo<0;

 select *from cuentas
  where numero>=3000;
--Problema 1 Terminado.

--Inicio Problema 2.
   if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),--máximo estimado 99999.99
  cantidadhijos tinyint--no superará los 255
 );

 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Gabriellla','24555666','f','Colon 134',850,0);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Bartolome Meus','27888999','m','Urquiza 479',10000.80,4);

 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Jeffrey SUll','29000555','f','Salta 876',700.888,3);

 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Marta SUarez','32444555','f','Sucre 1086',50000,2);

 select *from empleados
  where sueldobasico>=900;

 select *from empleados
  where cantidadhijos>0;
--Problema 2 Terminado.


--20- Tipo de dato (numérico)

 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

 set dateformat 'dmy';

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 select *from alumnos where fechaingreso<'1-1-91';

 select *from alumnos where fechanacimiento is null;

 insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

 set dateformat 'mdy';

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

--21- Tipo de dato (fecha y hora)

 if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

 insert into cuentas
  values (1,'25666777','Juan Perez',3500.50);

 insert into cuentas
  values ('25666777','Beethoven Aquino',1500.50);

 insert into cuentas (documento,saldo)
  values ('28999777',-5500);

 insert into cuentas (numero,documento,nombre,saldo)
  values (5,'28999777','Luis Lopez',34000);

 insert into cuentas (numero,documento,nombre)
  values (3344,'28999777','Luis Lopez',24000);

 insert into cuentas (nombre, saldo)
  values ('Luis Lopez',34000);

 select *from libros;


 --22- Tipo de dato (fecha y hora) 

--Inicio Problema 1.
  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

exec sp_columns visitantes;

 insert into visitantes (nombre, domicilio, montocompra)
  values ('Sull Hill','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select *from visitantes;

 insert into visitantes
  values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 insert into visitantes default values;

 select *from visitantes;
--Problema 1 Terminado.

--Inicio Problema 2.
 if object_id('prestamos') is not null
  drop table prestamos;

 create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo datetime not null,
  fechadevolucion datetime,
  devuelto char(1) default 'n'
 );

 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('Manual de tercer grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo)
  values ('la vida real y el espejo','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto)
  values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

 select *from prestamos;

 insert into prestamos
  values('Manual de historia','32555666','2006-10-25',default,default);
 select *from prestamos;

 insert into prestamos default values;
--Problema 2 Terminado.


--23- Columnas calculadas (operadores aritméticos y de concatenación)

 if object_id ('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('teclado','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('mouse','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select *from articulos;

 select nombre+','+descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select *from articulos;


--24- Alias

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
 insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
 insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);

 select nombre as NombreYApellido,
  domicilio,telefono
  from agenda;

 select nombre as 'Nombre y apellido',
  domicilio,telefono
  from agenda;

 select nombre 'Nombre y apellido',
  domicilio,telefono
  from agenda;


--25- Funciones 


--26- Funciones para el manejo de cadenas

  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('la vida real y el espejo','Lewis Carroll','Emece',15,50);

 select titulo, autor,editorial,precio,cantidad,
  precio*cantidad as 'monto total'
  from libros;

 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

 select titulo+'-'+autor as "Título y autor"
  from libros;


--27- Funciones para el uso de fechas y horas
  
  if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Anabel','Acosta','2272222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlo','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francis','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriel','Garcia','3050000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','LAngel','31111011','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados
  where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados
  where datepart(year,fechaingreso)=2000;


--28- Ordenar registros (order by)

  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select *from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

 select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;


--29- Ordenar registros (order by)

--Inicio Problema 1.
   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;
--Problema 1 Terminado.

--Inicio Problema 2.
   if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita','Richard Gere',120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas
  values('Un oso rojo','Julio Chavez',100);
 insert into peliculas
  values('Elsa y Fred','China Zorrilla',110);

 select *from peliculas
  where actor='Tom Cruise' or
  actor='Richard Gere';

 select *from peliculas
  where actor='Tom Cruise' and
  duracion<100;

 update peliculas set duracion=200
  where actor='Daniel R.' and
  duracion=180;

 delete from peliculas
  where not actor='Tom Cruise' and
  duracion<=100;
--Problema 2 Terminado.


--30- Otros operadores relacionales (is null)

  if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita',null,120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo)
  values('Un oso rojo');

 select *from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;


--31- Otros operadores relacionales (between)

 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fechayhora datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais)
  values ('Federico1','federicogarcia@xaxamail.com','Argentina');

 select *from visitas
  where fechayhora between '2006-09-12' and '2006-10-11';

 select *from visitas
  where numero between 2 and 5;


--32- Otros operadores relacionales (in)

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2009-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2010-10-01'); 

 select nombre,precio from medicamentos
  where laboratorio in ('Bayer','Bago');

 select *from medicamentos
  where cantidad between 1 and 5;

 select *from medicamentos
  where cantidad in (1,2,3,4,5);


--33- Búsqueda de patrones (like - not like)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

 select *from empleados
  where nombre like '%Perez%';

 select *from empleados
  where domicilio like 'Co%8%';

 select *from empleados
  where documento like '%[02468]';

 select *from empleados
  where documento like '[^13]%' and
  nombre like '%ez';

 select nombre from empleados
  where nombre like '%[yj]%';

 select nombre,seccion from empleados
  where seccion like '[SG]_______';

 select nombre,seccion from empleados
  where seccion not like '[SG]%';

 select nombre,sueldo from empleados
  where sueldo not like '%.00';

 select *from empleados
  where fechaingreso like '%1990%';


--34- Contar registros (count)

   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 

 select count(*)
  from medicamentos;

 select count(laboratorio)
   from medicamentos;

 select count(precio) as 'Con precio',
  count(cantidad) as 'Con cantidad'
  from medicamentos;

 select count(precio)
  from medicamentos
  where laboratorio like 'B%';

 select count(numerolote) from medicamentos;


--35- Funciones de agrupamiento (count - sum - min - max - avg) 

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

 select count(*)
  from empleados;

 select count(sueldo)
  from empleados
  where seccion='Secretaria';

 select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

 select avg(sueldo)
  from empleados;

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';


--36- Agrupar registros (group by)

 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 select ciudad, count(*)
  from visitantes
  group by ciudad;

 select ciudad, count(telefono)
  from visitantes
  group by ciudad;

 select sexo, sum(montocompra)
  from visitantes
  group by sexo;

 select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  from visitantes
  group by sexo,ciudad;

 select ciudad,
  avg(montocompra) as 'promedio de compras'
  from visitantes
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by all ciudad;
  

--37- Seleccionar grupos (having)

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia;

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia
  having count(*)>1;

 select ciudad, count(*)
  from clientes
  where domicilio like '%San Martin%'
  group by all ciudad
  having count(*)<2 and
  ciudad <> 'Cordoba';
  

--38- Registros duplicados (distinct)

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 select distinct provincia from clientes;

 select count(distinct provincia) as cantidad
  from clientes;

 select distinct ciudad from clientes;

 select count(distinct ciudad) from clientes;

 select distinct ciudad from clientes
  where provincia='Cordoba';

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;


--38- Cláusula top

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');

 select top 5 *from empleados;

 select top 4 nombre,seccion
  from empleados
  order by seccion;

 select top 4 with ties nombre,seccion
  from empleados
  order by seccion;

 select top 4 nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

 select top 4 with ties nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;


--39- Cláusula top

   if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 alter table vehiculos
 add constraint CK_vehiculos_tipo
 check (tipo in ('a','m'));

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 alter table vehiculos
  add constraint CK_vehiculos_patente_patron
  check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 alter table vehiculos
  add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

 insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

 exec sp_helpconstraint vehiculos;

 alter table vehiculos
  drop DF_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;

 alter table vehiculos
  drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;


--40- Eliminar restricciones (alter table - drop)

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo);

 alter table libros
 add constraint CK_libros_precio
 check (precio>=0);

 alter table libros
 add constraint DF_libros_autor
 default 'Desconocido'
 for autor;

 alter table libros
 add constraint DF_libros_precio
 default 0
 for precio;

 exec sp_helpconstraint libros;

 alter table libros
  drop DF_libros_autor;

 alter table libros
  drop PK_libros_codigo;

 exec sp_helpconstraint libros;


--41- Trabajar con varias tablas


--42- Combinación interna (inner join)

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 select* from libros;

 select titulo, autor, nombre
  from libros
  join editoriales
  on codigoeditorial=editoriales.codigo;

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  where e.nombre='Siglo XXI';

 select titulo,autor,nombre
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  order by titulo;


--43- Combinación externa izquierda (left join)

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

  select titulo,nombre
  from editoriales as e
  left join libros as l
  on codigoeditorial = e.codigo;

  select titulo,nombre
  from libros as l
  left join editoriales as e
  on codigoeditorial = e.codigo;

 select titulo,nombre
  from editoriales as e
  left join libros as l
  on e.codigo=codigoeditorial
  where codigoeditorial is not null;

 select titulo,nombre
  from editoriales as e
  left join libros as l
  on e.codigo=codigoeditorial
  where codigoeditorial is null;


--44- Combinación externa derecha (right join)

if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on codigoeditorial = e.codigo;

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on e.codigo=codigoeditorial
  where codigoeditorial is not null;

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on e.codigo=codigoeditorial
  where codigoeditorial is null;
go


--45- Combinación externa completa (full join) 

  if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

 select titulo,nombre
  from editoriales as e
  full join libros as l
  on codigoeditorial = e.codigo;
go


--46- Combinaciones cruzadas (cross join) 

 if object_id('comidas') is not null
  drop table comidas;
 if object_id('postres') is not null
  drop table postres;

 create table comidas(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 create table postres(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 insert into comidas values('ravioles',5);
 insert into comidas values('tallarines',4);
 insert into comidas values('milanesa',7);
 insert into comidas values('cuarto de pollo',6);

 insert into postres values('flan',2.5);
 insert into postres values('porcion torta',3.5);

 select c.nombre as 'plato principal',
  p.nombre as 'postre',
  c.precio+p.precio as 'total'
  from comidas as c
  cross join postres as p;
  go


--47- Combinación de más de dos tablas 

if object_id('libros') is not null
  drop table libros;
 if object_id('autores') is not null
  drop table autores;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2),
  primary key(codigo)
 );

 create table autores(
  codigo int identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');
 insert into editoriales values('Plaza');
 
 insert into autores values ('Richard Bach');
 insert into autores values ('Borges');
 insert into autores values ('Jose Hernandez');
 insert into autores values ('Mario Molina');
 insert into autores values ('Paenza');
 
 insert into libros values('El aleph',2,2,20);
 insert into libros values('Martin Fierro',3,1,30);
 insert into libros values('Aprenda PHP',4,3,50);
 insert into libros values('Uno',1,1,15);
 insert into libros values('Java en 10 minutos',0,3,45);
 insert into libros values('Matematica estas ahi',0,0,15);
 insert into libros values('Java de la A a la Z',4,0,50);

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  join libros as l
  on codigoautor=a.codigo
  join editoriales as e
  on codigoeditorial=e.codigo;

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  right join libros as l
  on codigoautor=a.codigo
  left join editoriales as e
  on codigoeditorial=e.codigo
  go


--48- Combinaciones con update y delete 

if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 update libros set precio=precio+(precio*0.1)
  from libros 
  join editoriales as e
  on codigoeditorial=e.codigo
  where nombre='Planeta';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;

 delete libros
  from libros
  join editoriales
  on codigoeditorial = editoriales.codigo
  where editoriales.nombre='Emece';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;
  go


--49- Clave foránea

CREATE TABLE departamentoss
(
	dep int NOT NULL, 
	departamento varchar(255), 
	PRIMARY KEY (dep) 
); 

CREATE TABLE personass 
( 
per int NOT NULL, 
nombre varchar(255), 
apellido1 varchar(255), 
dep int NOT NULL, 
PRIMARY KEY (per), 
FOREIGN KEY (dep) REFERENCES departamentos(dep) 
); 
go


--50- Unión

if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('profesores') is not null
  drop table profesores;

 create table profesores(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table alumnos(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into alumnos values('30000000','Juan Perez','Colon 123');
 insert into alumnos values('30111111','Marta Morales','Caseros 222');
 insert into alumnos values('30222222','Laura Torres','San Martin 987');
 insert into alumnos values('30333333','Mariano Juarez','Avellaneda 34');
 insert into alumnos values('23333333','Federico Lopez','Colon 987');
 insert into profesores values('22222222','Susana Molina','Sucre 345');
 insert into profesores values('23333333','Federico Lopez','Colon 987');

 select nombre, domicilio from alumnos
  union
  select nombre, domicilio from profesores;

 select nombre, domicilio from alumnos
  union all
  select nombre, domicilio from profesores;

 select nombre, domicilio from alumnos
  union
   select nombre, domicilio from profesores
  order by domicilio;

 select nombre, domicilio, 'alumno' as condicion from alumnos
  union
   select nombre, domicilio,'profesor' from profesores
  order by condicion;
go


--51- Agregar y eliminar campos ( alter table - add - drop) 

if object_id('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(30),
  editorial varchar(15),
  edicion datetime,
  precio decimal(6,2)
 );

 insert into libros (titulo,editorial,precio)
  values ('El aleph','Emece',25.50);

 alter table libros
  add cantidad tinyint;

 exec sp_columns libros;

 alter table libros
  add codigo int identity;

 alter table libros
  add autor varchar(30) not null;

 alter table libros
  add autor varchar(20) not null default 'Desconocido';

 alter table libros
  drop column precio;

exec sp_columns libros;

 alter table libros
  drop column autor;

 alter table libros
  drop column editorial,edicion;
go


--52- Alterar campos (alter table - alter) 

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2) not null default 0
 );

 insert into libros
  values('El aleph','Borges','Planeta',20);
 insert into libros
  values('Java en 10 minutos',null,'Siglo XXI',30);
 insert into libros
  values('Uno','Richard Bach','Planeta',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',null,30);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',25);

 alter table libros
  alter column titulo varchar(40) not null;

 delete from libros where autor is null;
 alter table libros
  alter column autor varchar(30) not null;

 alter table libros
  alter column codigo smallint;

exec sp_columns libros;

 alter table libros
  alter column precio decimal(6,2) null;
  go


--53- Campos calculados 

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(10),
  domicilio varchar(30),
  sueldobasico decimal(6,2),
  hijos tinyint not null default 0,
  sueldototal as sueldobasico + (hijos*100)
 );

 insert into empleados values('22222222','Juan Perez','Colon 123',300,2);
 insert into empleados values('23333333','Ana Lopez','Sucre 234',500,0);

 select *from empleados;

 update empleados set hijos=1 where documento='23333333';
 select *from empleados;

 select *from empleados;

 alter table empleados
  add salariofamiliar as hijos*100;

 exec sp_columns empleados;

 select *from empleados;
go


--54- Subconsultas

use sakila
SELECT first_name
FROM dbo.actor
WHERE last_name =
    (SELECT last_name
     FROM dbo.actor
     WHERE first_name= 'PENELOPE' );
GO

SELECT a.actor_id
FROM dbo.actor AS a
     JOIN dbo.actor AS ac
       ON (a.last_name = ac.last_name)
WHERE ac.first_name = 'PENELOPE';
GO


--55- Subconsultas como expresión 

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 insert into libros values('El aleph','Borges','Emece',10.00);
 insert into libros values('Ilusiones','Richard Bach','Planeta',15.00);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Planeta',20.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Emece',30.00);
 insert into libros values('Uno','Richard Bach','Planeta',10.00);

 select titulo,precio,
  precio-(select max(precio) from libros) as diferencia
  from libros
  where titulo='Uno';

 select titulo,autor, precio
  from libros
  where precio=
   (select max(precio) from libros);

 update libros set precio=45
  where precio=
   (select max(precio) from libros);

 delete from libros
  where precio=
   (select min(precio) from libros);
   go


--56- Subconsultas con in

if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  primary key(codigo),
 constraint FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   on update cascade,
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1);
 insert into libros values('Ilusiones','Richard Bach',1);
 insert into libros values('Aprenda PHP','Mario Molina',4);
 insert into libros values('El aleph','Borges',2);
 insert into libros values('Puente al infinito','Richard Bach',2);

 select nombre
  from editoriales
  where codigo in
   (select codigoeditorial
     from libros
     where autor='Richard Bach');

 select codigoeditorial
  from libros
  where autor='Richard Bach';

 select distinct nombre
  from editoriales as e
  join libros
  on codigoeditorial=e.codigo
  where autor='Richard Bach';

 select nombre
  from editoriales
  where codigo not in
   (select codigoeditorial
     from libros
     where autor='Richard Bach');
go


--57- Subconsultas any - some - all

if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);


--58- Subconsultas correlacionadas

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;


--59- Exists y No Exists

  if object_id('deportes') is not null
  drop table deportes;

 create table deportes(
  nombre varchar(15),
  profesor varchar(30),
  dia varchar(10),
  cuota decimal(5,2),
 );
 
 insert into deportes values('tenis','Ana Lopez','lunes',20);
 insert into deportes values('natacion','Ana Lopez','martes',15);
 insert into deportes values('futbol','Carlos Fuentes','miercoles',10);
 insert into deportes values('basquet','Gaston Garcia','jueves',15);
 insert into deportes values('padle','Juan Huerta','lunes',15);
 insert into deportes values('handball','Juan Huerta','martes',10);

 select distinct d1.profesor
  from deportes as d1
  where d1.profesor in
  (select d2.profesor
    from deportes as d2 
    where d1.nombre <> d2.nombre);

 select distinct d1.profesor
  from deportes as d1
  join deportes as d2
  on d1.profesor=d2.profesor
  where d1.nombre<>d2.nombre;

 select nombre
  from deportes
  where nombre<>'natacion' and
  dia =
   (select dia
     from deportes
     where nombre='natacion');

 select d1.nombre
  from deportes as d1
  join deportes as d2
  on d1.dia=d2.dia
  where d2.nombre='natacion' and
  d1.nombre<>d2.nombre;


--60- Subconsulta en lugar de una tabla

   if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;


--61- Subconsulta (update - delete)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

 if object_id('pa_empleados_sueldo') is not null
  drop procedure pa_empleados_sueldo;

 create procedure pa_empleados_sueldo
  @sueldo decimal(6,2)
 as
  select nombre,apellido,sueldo
   from empleados
    where sueldo>=@sueldo;

 exec pa_empleados_sueldo 400;
 exec pa_empleados_sueldo 500;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_actualizar_sueldo') is not null
  drop procedure pa_empleados_actualizar_sueldo;

 create procedure pa_empleados_actualizar_sueldo
  @sueldoanterior decimal(6,2),
  @sueldonuevo decimal(6,2)
 as
  update empleados set sueldo=@sueldonuevo
   where sueldo=@sueldoanterior;

 exec pa_empleados_actualizar_sueldo 300,350;
 select *from empleados;

 exec pa_empleados_actualizar_sueldo 350;

 exec pa_empleados_actualizar_sueldo @sueldonuevo=400,@sueldoanterior=350;

 select *from empleados;

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

 create procedure pa_sueldototal
  @documento varchar(8) = '%'
 as
  select nombre,apellido,
   sueldototal=
   case 
    when sueldo<500 then sueldo+(cantidadhijos*200)
    when sueldo>=500 then sueldo+(cantidadhijos*100)
   end
   from empleados
   where documento like @documento;

 exec pa_sueldototal '22333333';
 exec pa_sueldototal '22444444';
 exec pa_sueldototal '22666666';

 exec pa_sueldototal;
 

--62- Subconsulta (insert)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',350,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',null,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',460,3,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',580,3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',400,3,'Secretaria');

 if object_id('pa_seccion') is not null
  drop procedure pa_seccion;

 create procedure pa_seccion
  @seccion varchar(20)='%',
  @promedio decimal(6,2) output,
  @mayor decimal(6,2) output
 as
  select @promedio=avg(sueldo)
   from empleados
   where seccion like @seccion
  select @mayor=max(sueldo)
   from empleados
    where seccion like @seccion;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion 'Contaduria', @p output, @m output
 select @p as promedio, @m as mayor

 execute pa_seccion 'Secretaria', @p output, @m output
 select @p as promedio, @m as mayor;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion @promedio=@p output,@mayor= @m output
 select @p as promedio, @m as mayor;

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

 create procedure pa_sueldototal
  @documento varchar(8)='%',
  @sueldototal decimal(8,2) output
 as
  select @sueldototal=
   case 
    when sueldo<500 then sueldo+(cantidadhijos*200)
    when sueldo>=500 then sueldo+(cantidadhijos*100)
   end
   from empleados
   where documento like @documento;

 declare @st decimal(8,2)
 exec pa_sueldototal '22666666', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22999999', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22555555', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal @sueldototal=@st output
 select @st;


--63- Crear tabla a partir de otra (select - into)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',NULL,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',1,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',3,'Secretaria');

 if object_id('pa_empleados_seccion') is not null
  drop procedure pa_empleados_seccion;

 create procedure pa_empleados_seccion
  @seccion varchar(20)=null
 as 
 if @seccion is null
 begin 
  select 'Debe indicar una seccion'
  return
 end
 select nombre from empleados where seccion=@seccion;

 exec pa_empleados_seccion 'Secretaria';

 exec pa_empleados_seccion;

 if object_id('pa_actualizarhijos') is not null
  drop procedure pa_actualizarhijos;

 create procedure pa_actualizarhijos
  @documento char(8)=null,
  @hijos tinyint=null
 as 
 if (@documento is null) or (@hijos is null)
  return 0
 else 
 begin
  update empleados set cantidadhijos=@hijos where documento=@documento
  return 1
 end;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22222222',3
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333'
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333',2
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos @hijos=4
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';


--64- go

 if object_id('clientes') is not null
  drop table clientes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  constraint PK_ciudades
   primary key (codigo)
 );

 create table clientes(
  nombre varchar(20),
  apellido varchar(20),
  documento char(8),
  domicilio varchar(30),
  codigociudad tinyint
   constraint FK_clientes_ciudad
    foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade
 );

 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('Cruz del Eje');
 insert into ciudades values('La Falda');

 insert into clientes values('Juan','Perez','22222222','Colon 1123',1);
 insert into clientes values('Karina','Lopez','23333333','San Martin 254',2);
 insert into clientes values('Luis','Garcia','24444444','Caseros 345',1);
 insert into clientes values('Marcos','Gonzalez','25555555','Sucre 458',3);
 insert into clientes values('Nora','Torres','26666666','Bulnes 567',1);
 insert into clientes values('Oscar','Luque','27777777','San Martin 786',4);

 if object_id('vista_clientes') is not null
  drop view vista_clientes;

 create view vista_clientes
 as
  select apellido, cl.nombre, documento, domicilio, cl.codigociudad,ci.nombre as ciudad
  from clientes as cl
  join ciudades as ci
  on codigociudad=codigo
  where ci.nombre='Cordoba'
  with check option;

 select *from vista_clientes;

 update vista_clientes set apellido='Pereyra' where documento='22222222';

 select *from clientes;

 update vista_clientes set codigociudad=2 where documento='22222222';


--65- Vistas

  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=3
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=1
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  readtext visitas.comentarios @puntero 0 0
 else select 'puntero invalido';


--66- Vistas (información)

if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 select *from visitas;

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
  writetext visitas.comentarios @puntero 'Esta página es excelente, no hay otra mejor.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
 readtext visitas.comentarios @puntero 0 0;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1

 writetext visitas.comentarios @puntero 'Es una muy buena página, pero tiene algunos errores.';

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una muy buena página, pero tiene algunos errores.'
 else select 'puntero invalido, no se actualizó el registro';

 insert into visitas values ('Salvador Quiroga','salvador@hotmail.com','Argentina','2006-09-09 18:25','');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where nombre='Salvador Quiroga'
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una página más que interesante.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where nombre='Salvador Quiroga'
 
  readtext visitas.comentarios @puntero 0 0;


--67- Lenguaje de control de flujo (case)

  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2),
  primary key(documento)
 );

 insert into alumnos values ('22222222','Pedro Lopez',5);
 insert into alumnos values ('23333333','Ana Lopez',4);
 insert into alumnos values ('24444444','Maria Juarez',8);
 insert into alumnos values ('25555555','Juan Garcia',5.6);
 insert into alumnos values ('26666666','Karina Torres',2);
 insert into alumnos values ('27777777','Nora Torres',7.5);
 insert into alumnos values ('28888888','Mariano Herrero',3.5);

 if object_id('aprobados') is not null
  drop table aprobados;

 create table aprobados(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2)
 );

 if object_id('desaprobados') is not null
  drop table desaprobados;

 create table desaprobados(
  documento char(8),
  nombre varchar(40)
 );

 if object_id('pa_aprobados') is not null
  drop procedure pa_aprobados;

 create proc pa_aprobados
  as
  select *
   from alumnos
   where nota>=4;

 insert into aprobados exec pa_aprobados;

 select *from aprobados;

 if object_id('pa_desaprobados') is not null
  drop procedure pa_desaprobados;

 create proc pa_desaprobados
  as
  select documento,nombre
   from alumnos
   where nota<4;

 insert into desaprobados exec pa_desaprobados;

 select *from desaprobados;


--68- Lenguaje de control de flujo (if)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as añoingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de años es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;


--69- Procedimientos almacenados

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as añoingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de años es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;


--70- Tablas temporales

   if (object_id('libros')) is not null
  drop table libros;
 if (object_id('ventas')) is not null
  drop table ventas;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  cantidad int,
  primary key (codigo)
 );

 create table ventas(
  numero int identity,
  codigo int not null,
  preciounitario decimal(6,2),
  cantidad int, 
  constraint PK_ventas primary key (numero),
  constraint FK_ventas_codigolibro
   foreign key (codigo)
   references libros(codigo)
   on update cascade
 );

 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Ilusiones','Richard Bach','Planeta',18,150);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',20,300);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);
 
 insert into ventas values(1,15,1);
 insert into ventas values(2,18,1);
 insert into ventas values(3,25,100);
 insert into ventas values(1,15,50);

 if (object_id('pa_ventas')) is not null
  drop proc pa_ventas;

  create procedure pa_ventas
  as
   select v.numero,
   (l.titulo+'-'+l.autor+'-'+l.editorial) as libro,
   v.preciounitario,
   v.cantidad,
   (v.preciounitario*v.cantidad) as total
   from ventas as v
   join libros as l
   on v.codigo=l.codigo;

 exec pa_ventas;

 if (object_id('pa_vender')) is not null
  drop proc pa_vender;

 create procedure pa_vender
  @codigo int=null,
  @cantidad int=1
  as
   --verificamos que el código exista
   if not exists (select *from libros where codigo=@codigo) or (@codigo is null)
     select 'Ingrese un codigo de libro válido'
   else
   begin --verificamos que haya stock
     declare @disponibles int
     select @disponibles= cantidad from libros where codigo=@codigo
     if (@disponibles<@cantidad)
       select 'Solo hay '+cast(@disponibles as varchar(10))+' disponibles'
     else
     begin
       declare @precio decimal(6,2) 
       select @precio= precio from libros where codigo=@codigo
       insert into ventas values(@codigo,@precio,@cantidad)
       update libros set cantidad=cantidad-@cantidad where @codigo=codigo
     end
   end;

 exec pa_vender 1,20;

 select *from ventas;
 select *from libros;

 exec pa_vender 9;

 exec pa_vender 5,250;


--73- Tablas temporales

 if object_id('consultas') is not null
  drop table consultas;
 if object_id('medicos') is not null
  drop table medicos;

 create table medicos (
  documento char(8) not null,
  nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento)
 );

 create table consultas(
  fecha datetime,
  medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on delete cascade
 );

 insert into medicos values('22222222','Alfredo Acosta');
 insert into medicos values('23333333','Pedro Perez');
 insert into medicos values('24444444','Marcela Morales');

 insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
 insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
 insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
 insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
 insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');

 if object_id('f_nombreDia') is not null
  drop function f_nombreDia;

 create function f_nombreDia
 (@fecha varchar(30))
  returns varchar(10)
  as
  begin
    declare @nombre varchar(10)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'miércoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 'sábado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha válida
    return @nombre
 end;
 
 if object_id('f_horario') is not null
  drop function f_horario;

 create function f_horario
 (@fecha varchar(30))
  returns varchar(5)
  as
  begin
    declare @nombre varchar(5)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
      set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
    end--si es una fecha válida
    return @nombre
 end;

 if object_id('f_fecha') is not null
  drop function f_fecha;

 create function f_fecha
 (@fecha varchar(30))
  returns varchar(12)
  as
  begin
    declare @nombre varchar(12)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

 select dbo.f_nombredia(fecha) as dia,
  dbo.f_fecha(fecha) as fecha,
  dbo.f_horario(fecha) as horario,
  paciente
  from consultas as c
  join medicos as m
  on m.documento=c.medico
  where m.nombre='Alfredo Acosta';

 select fecha, m.nombre
 from consultas as c
 join medicos as m
 on m.documento=c.medico
 where dbo.f_nombredia(fecha)='sábado';

 declare @valor char(30)
 set @valor='2007/04/09'
 select dbo.f_nombreDia(@valor);

--75- Funciones de tabla de varias instrucciones

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';

  
--76- Funciones con valores de tabla en línea

if object_id('libross') is not null
  drop table libros;

 create table libross(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );

 insert into libros values('Uno','Richard Bach','Planeta');
 insert into libros values('El aleph','Borges','Emece');
 insert into libros values('Ilusiones','Richard Bach','Planeta');
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');

 if object_id('f_libros') is not null
  drop function f_libros;

 create function f_libros
 (@autor varchar(30)='Borges')
 returns table
 as
 return (
  select titulo,editorial
  from libros
  where autor like '%'+@autor+'%'
 );

 select *from f_libros('Bach');

 if object_id('f_libros_autoreditorial') is not null
  drop function f_libros_autoreditorial;

 create function f_libros_autoreditorial
 (@autor varchar(30)='Borges',
 @editorial varchar(20)='Emece')
 returns table
 as
 return (
  select titulo,autor,editorial
  from libros
  where autor like '%'+@autor+'%' and
  editorial like '%'+@editorial+'%'
 );

 select *from f_libros_autoreditorial('','Nuevo siglo');

 select *from f_libros_autoreditorial(default,default);

