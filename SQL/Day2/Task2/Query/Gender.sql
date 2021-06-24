--Selectselect * from Gender;
select GenderTitle from Gender;

--Insert
insert into Gender values(4,'Gender');
--Update
UPDATE Gender SET GenderTitle = 'Update' WHERE GenderID = 4;
--delete
delete from Gender where GenderID = 4;