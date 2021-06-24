select 
P.Name,
G.Title
from Person P 
inner join Gender G
on P.GenderId = G.Id
where p.Id = 1

select * from Person P 
Right Join Gender G
on P.GenderId = G.Id

select * from Person P 
Left Join Gender G
on G.Id = P.GenderId

select * from Person P 
Full Join Gender G
on G.Id = P.GenderId


