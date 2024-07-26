--Creando un Login de SQL
----Login me da acceso al servidor

use master 
go

create login usuarioSistema 
with password = 'P@ssw0rd'
go
--Creando un user para el login informatica en la BD Northwind

use Northwind
go
create user usuarioSistema for login usuarioSistema

-- Dar permisos de manera individual 
grant create table to usuarioSistema
grant select on dbo.customers to usuarioSistema


-- para agregar un rol de base de datos
create login usuarioSistema2 
with password = 'P@ssw0rd'

create user usuarioSistema2 for login usuarioSistema2

Exec sp_addrolemember 'db_datareader' , 'usuarioSistema2'
Exec sp_addrolemember 'db_datawriter' , 'usuarioSistema2'

Exec sp_addrolemember 'db_datareader' , 'usuarioSistema'
Exec sp_addrolemember 'db_datawriter' , 'usuarioSistema'
