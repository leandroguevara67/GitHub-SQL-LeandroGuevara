create tale Usuarios(
id int identity,
nombre varchar(50),
apellido varchar(50),
edad int,
email varchar(50)
)
create prod sp_insertar_usuario(
@nombre varchar(50),
@apellido varchar(50),
@edad int,
@email varchar(50),
)
as
begin
insert into Usuarios(nombre,apellido,edad,email) values (@nombre,@apellido,@edad,@email)
select * from Usuarios
end

