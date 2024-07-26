-- Store procedure que visualice los resultados 
-- de cualquier tabla

-- Select * from [tabla]

USE NORTHWIND;
GO

CREATE OR ALTER PROCEDURE spu_mostrar_datos 
@tabla varchar(50)
AS
begin
    declare @query nvarchar(50)
	set @query = 'Select * from ' + QUOTENAME(@tabla);
	-- exec (@query);

	exec sp_executesql @query;
end;
GO

exec spu_mostrar_datos 'products';


