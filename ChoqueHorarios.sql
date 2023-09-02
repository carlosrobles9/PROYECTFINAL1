-- Creación de la base de datos
CREATE DATABASE DeteccionChoqueHorario;


-- Creación de la tabla Profesores
CREATE TABLE Profesores(    
Id_Profesor int primary key identity(1,1),
Nombre varchar(20),
Apellido varchar(40),
Correo varchar(50),
Horario_Disponible int 
)
-- Creación de la tabla Cursos
CREATE TABLE Cursos (
   ID_Curso int primary key identity(1,1),
   Nombre_Curso varchar (20),
   Cupos int 
)

insert into Profesores values ('Carlos','Alfredo','Carlos@gmail.prueba',40)
select * from Profesores

-- Creación de la tabla ChoquesHorarios
CREATE TABLE ChoquesHorarios (
	ID_Choque_Horarios int primary key identity(1,1),
	Id_Asignatura int,
	Id_Curso int,
	Id_Profesor int
)
insert into ChoquesHorarios values (1,1,2)
select * from ChoquesHorarios

-- Creación de la tabla AsignacionesCursos
CREATE TABLE AsignacionesCursos (
    IdAsignacion_Cur int primary key identity (1,1),
    IdAsignatura int,
    Id_Curso int
)
insert into AsignacionesCursos values (1,1)
select * from AsignacionesCursos

CREATE TABLE Asignatura (
	Id_Asig int primary key identity (1,1),
	Nombre_Asig varchar(20),
	Clave_Asig varchar(20),
	Horario_Asig varchar(10), 
	Profesor_Asig varchar(30)
)
insert into Asignatura values ('Calculo II','IRI-001','11am-14pm','Lewis Luz Delnis')
select * from Asignatura

-- Creación de la tabla HorariosDisponibles
CREATE TABLE HorariosDeClases (
    ID_Horario_Clase int primary key identity (1,1),
	Días varchar (10),
	Hora_Inicio datetime,
	Hora_Final datetime,
	Fecha date
)
insert into HorariosDeClases values ('Lunes','12:00pm','14:00pm','12/05/2023')
select * from HorariosDeClases

-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY identity(1,1),
    Usuario VARCHAR(50),
    Contrasena VARCHAR(100),
)
insert into Usuarios values ('Albert','123')
select * from Usuarios
