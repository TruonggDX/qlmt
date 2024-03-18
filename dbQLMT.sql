create database computer;
use computer;
create table category(
	id int identity(1,1) primary key,
	code varchar(10),
	nameCategory nvarchar(25),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);
create table producer(
	id int identity(1,1) primary key,
	code varchar(10),
	nameProducer nvarchar(25),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);

create table users(
	id int identity(1,1) primary key,
	fullname nvarchar(30),
	username nvarchar(30),
	pass nvarchar(30),
	phone nvarchar(10),
	birthday date,
	address nvarchar(255),
	email varchar(255),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);
create table product(
	id int identity(1,1) primary key,
	nameProduct nvarchar(30),
	years int,
	descriptions text,
	warranty nvarchar(30),
	category_id int,
	foreign key (category_id) references category(id),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);
create table producer_product(
	id int identity(1,1) primary key,
	product_id int,
	foreign key (product_id) references product(id),
	producer_id int,
	foreign key (producer_id) references producer(id),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);
create table images(
	id int identity(1,1) primary key,
	product_id int,
	foreign key (product_id) references product(id),
	users_id int,
	foreign key (users_id) references users(id),
	created_by nvarchar(25),
	created_at date,
	deleted bit default 0
);
--create table bill(
--	id int identity(1,1) primary key,
--	address nvarchar(255),
--	note nvarchar(255),
--	total_price float,
--	disscount int,
--	statuss nvarchar(255),
--	created_by nvarchar(25),
--	created_at date
);--
--create table detail_bill(
--	id int identity(1,1) primary key,
--	quantity int,
--	nameProduct nvarchar(30),
--	price float,
--	bill_id int,
--	foreign key (bill_id) references bill(id),
--	created_by nvarchar(25),
--	created_at date
--);


