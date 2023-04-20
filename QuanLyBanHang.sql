create table Customer(
	cID int primary key auto_increment,
    cName varchar(50) not null,
    cAge int not null);
create table `Order`(
	oID int primary key auto_increment,
    cID int not null,
    oDate datetime not null,
    oTotalPrice double not null,
    foreign key (cID) REFERENCES Customer (cID)
    );
create table Product(
	pID int primary key auto_increment,
    pName varchar(50) not null,
    pPrice double not null);
create table OrderDetail(
	oID int not null,
    pID int not null,
    odQTY int check (odQTY >= 1) not null,
    foreign key (oID) references `Order` (oID),
    foreign key (pID) references Product (pID));

    