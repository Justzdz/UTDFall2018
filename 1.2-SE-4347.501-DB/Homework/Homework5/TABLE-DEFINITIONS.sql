--- drop statements
drop table BOOKS cascade constraints;
drop table MEMBERS cascade constraints;
drop table ORDERS cascade constraints;
drop table ODETAILS cascade constraints;
drop table CART cascade constraints;

create table books (
isbn char(10),
author varchar2(100) not null,
title varchar2(128) not null,
price number(7,2) not null,
subject varchar2(30) not null,
primary key (isbn)
);


create table members (
fname varchar2(20) not null,
lname varchar2(20) not null,
address varchar2(50) not null,
city varchar2(30) not null,
state varchar2(20) not null,
zip number(5) not null,
phone varchar2(12),
email varchar2(40),
userid varchar2(20),
password varchar2(20),
creditcardtype varchar2(10)
check(creditcardtype in ('amex','discover','mc','visa')),
creditcardnumber char(16),
primary key (userid)
);

create table orders (
userid varchar2(20) not null,
ono number(5),
received date not null,
shipped date,
shipAddress varchar2(50),
shipCity varchar2(30),
shipState varchar2(20),
shipZip number(5),
primary key (ono),
foreign key (userid) references members
);

create table odetails (
ono number(5),
isbn char(10),
qty number(5) not null,
price number(7,2) not null,
primary key (ono,isbn),
foreign key (ono) references orders,
foreign key (isbn) references books
);

create table cart (
userid varchar2(20),
isbn char(10),
qty number(5) not null,
primary key (userid,isbn),
foreign key (userid) references members,
foreign key (isbn) references books
);