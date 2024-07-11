
-- Las transacciones son fundamentales para asegurar la consistencia
-- y la integridad de los datos.

-- Transaccion: Es una unidad de trabaj que se ejecuta de manera
-- completamente exitosa o no se ejecuta en absoluto.

-- Begin Transaction: Inicia una nueva transaccion
-- Commit Transaction: Confirma todos los cambios realizados 
-- durante la transaccion
-- RollBack Transaction: Revierte todos los cambios realizados
-- durante la transaccion

use Northwind

select * from Categories

begin transaction 

insert into Categories (CategoryName, Description)
values ('Categoria11', 'Los Remediales')

rollback transaction

commit transaction

