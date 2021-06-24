create proc GetAdminByUserName
@UserName varchar(50)
as
select * from Admins where UserName like '%'+@UserName+'%'

exec GetAdminByUserName 'Osa';
drop proc GetAdminByUserName;

create proc GetAdminsByIdMore0
AS
SELECT * from Admins where ID > 0;


exec GetAdminsByIdMore0;
drop proc GetAdminsByIdMore0;