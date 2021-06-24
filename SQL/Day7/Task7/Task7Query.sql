create Table Restaurant (
    Id int NOT NULL,
	Name varchar(50) not null,
    primary key (Id)
);
create Table Staff (
    Id int NOT NULL,
	Name varchar(50) not null,
	IdRestaurant int not null
    primary key (Id)
);
create Table OrderTable (
    Id int NOT NULL,
	TextOrder varchar(500) not null,
	Date Datetime DEFAULT GetDate()
    primary key (Id)
);

insert into OrderTable(Id,TextOrder) values(2,'Text2');
select
TextOrder as Text,
CAST(Date as Time) as Time,
CAST(Date as Date) as Date,
Date as FullDate
from OrderTable;