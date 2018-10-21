
create database Estudiante
use estudiante


create table alumnos(
id_alumno int identity,
nombre varchar (20),
grupo  char(2),
materia varchar(15),
parcial1 decimal(5,2),
parcial2 decimal(5,2), 
parcial3 decimal(5,2),
promedioFinal decimal(5,2),
primary key (id_alumno)
);


go
create procedure InsertarCalificacion
@id_alumno int ,
@nombre varchar(20),
@grupo  char(2),
@materia varchar(15),
@parcial1 decimal(5,2),
@parcial2 decimal(5,2),
@parcial3 decimal(5,2)
as
declare @promedio int
set @promedio = (@parcial1 + @parcial2 + @parcial3) / 3 

if(@parcial1 >= 70 AND @parcial2 >= 70 AND @parcial3 >= 70 )
 BEGIN
  insert into alumnos(nombre,grupo,materia,parcial1,paarcial2,parcial3,promedioFinal) 
  values (@nombre,@grupo,@materia,@parcial1,@parcial2,@parcial3,@promedio)
 END
else
 BEGIN
  insert into alumnos(nombre,grupo,materia,parcial1,paarcial2,parcial3,promedioFinal) 
  values (@nombre,@grupo,@materia,@parcial1,@parcial2,@parcial3,@promedio)
 END
go



exec InsertarCalificacion 1, 'JORGE', 'A','Ingles',8.5,9,8.0
exec InsertarCalificacion 5, 'Jasiel', 'A','Geografia',9,9,9


select * from alumnos;







