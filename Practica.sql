--Create database Practica

Use Practica 

Create table Persona(
	Nombre Varchar(80),
	Apellido Varchar(80),
	Dni int
)
go

insert into Persona(Nombre, Apellido, Dni) Values('Martin', 'Marquesi', 26125988)
insert into Persona(Nombre, Apellido, Dni) Values('Pablo', 'Marquesi', 25485699)
insert into Persona(Nombre, Apellido, Dni) Values('Roberto', 'Sanchez', 20566401)
insert into Persona(Nombre, Apellido, Dni) Values('Estefania', 'Guissini', 27128064)
insert into Persona(Nombre, Apellido, Dni) Values('Ruben', 'Alegrato', 24238975)
insert into Persona(Nombre, Apellido, Dni) Values('Sandra', 'Britte', 25483669)
insert into Persona(Nombre, Apellido, Dni) Values('Melisa', 'Ardul', 27456224)
insert into Persona(Nombre, Apellido, Dni) Values('Soledad', 'Michelli', 29889656)
insert into Persona(Nombre, Apellido, Dni) Values('Betania', 'Musachegui', 27128765)
insert into Persona(Nombre, Apellido, Dni) Values('Juan', 'Serrat', 28978845)

Select Nombre
from Persona 
Where apellido = 'E'

Select Nombre as [Primer Nombre]
from Persona 
Where apellido = 'E'

Select nombre, dni 
from Persona 
Where dni between 1 and 3


Select nombre
from Persona 
Where (nombre not like 'P%') or (nombre like '______')

Select Distinct Apellido
From Persona


Create table Jugadores(
	Dni int,
	Puesto Varchar(15),
	[No camiseta] int
)
go

Insert into Jugadores(Dni, Puesto, [No camiseta]) values (26125988, 'Delantero', 9)
Insert into Jugadores(Dni, Puesto, [No camiseta]) values (25485699, 'Medio', 5)
Insert into Jugadores(Dni, Puesto, [No camiseta]) values (28978845, 'Arquero', 1)
Insert into Jugadores(Dni, Puesto, [No camiseta]) values (29789854, 'Defensor', 3)

--Hay dos maneras de hacerlo
Select nombre, apellido
from Persona 
where apellido = 'Marquesi'
Union 
Select nombre, apellido
from Persona 
where apellido = 'Serrat'


Select nombre, dni
from Persona
Where Apellido = 'Marquesi' OR Apellido = 'Serrat'

------------------------------------------------
Select Distinct Dni 
From Persona 
where Exists(
	Select *
	From Jugadores
	Where Persona.Dni = Jugadores.Dni
)


Select distinct Persona.Dni
from Persona ineer join Jugadores
On Persona.Dni = Jugadores.Dni

	
Select Nombre, Apellido
From Persona Where Dni
in
(Select Dni From Jugadores)


Select Nombre, Apellido, Dni
From Persona 
Where Exists(
	Select Dni
	From Jugadores
	Where Dni = 26125988
)

Select Apellido, Nombre
From Persona 
Order by Apellido Asc, Nombre Asc

create table Pro(
	Dni int,
	Años_pro int,
	Club Varchar(15),
	Valor_actual int 
)

insert into Pro(Dni, Años_pro, Club, Valor_actual) Values (26125988, 5, 'All Boys', 1000)
insert into Pro(Dni, Años_pro, Club, Valor_actual) Values (25485699, 2, 'All Boys', 2500)
insert into Pro(Dni, Años_pro, Club, Valor_actual) Values (27126045, 3, 'Lanus', 12000)
insert into Pro(Dni, Años_pro, Club, Valor_actual) Values (26958644, 4, 'Lanus', 6500)
insert into Pro(Dni, Años_pro, Club, Valor_actual) Values (29120791, 1, 'Lanus', 450)


