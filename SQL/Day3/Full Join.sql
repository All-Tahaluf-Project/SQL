select 
P.FirstName,P.MiddleName,P.LastName,a.AddressLine1,a.AddressLine2
from Person.Person P 
Full Join Person.BusinessEntityAddress Bea On P.BusinessEntityID = Bea.BusinessEntityID
Full Join Person.Address a On Bea.AddressID = a.AddressID
Full Join Person.AddressType adt On Bea.AddressTypeID = adt.AddressTypeID


