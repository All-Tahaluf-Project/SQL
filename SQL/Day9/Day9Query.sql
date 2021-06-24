
--Create Table CustomerBackup2017 And Get Data From Person.Person
select * Into CustomerBackup2017 from Person.Person;

select * from CustomerBackup2017;

--Insert Data From Person.Person To CustomerBackup2017
Insert into CustomerBackup2017 select * from Person.Person;
