Create table harishBook(book_Number number(5)PRIMARY KEY,
book_name varchar(2),
author varchar2(20),
price number(7,2));


CREATE table harishStudent(Roll_Number NUMBER(5),Student_Name VARCHAR2(30),Branch VARCHAR2(25),Date_of_Birth DATE ,Mark_Scored NUMBER(6,2));
DESCRIBE harishstudent;



Create table harish_Author (phone_Number NUMBER(10) PRIMARY KEY,first_Name VARCHAR2(20),last_Name VARCHAR2(20),city VARCHAR2(20),pincode NUMBER(6)); 
Create table HR_Book (Book_Number NUMBER(7),Book_Name VARCHAR(30),price NUMBER(10,2) ,author_Ref number(10) REFERENCES harish_Author(phone_Number));
DESCRIBE HR_Book;

DESCRIBE harishproduct;


CREATE  table Harish_Book(Book_No NUMBER(6),Book_Name VARCHAR2(30),Author_Name VARCHAR2(30),Cost NUMBER(7,2),Category CHAR(10));
          
CREATE TABLE Harish_Issue(Lib_Issue_id NUMBER(10),Book_No NUMBER(6),Member_id NUMBER(5),Issue_Date DATE ,Return_date DATE); 
      
DESCRIBE harish_member;
DESCRIBE harish_book;
DESCRIBE harish_issue;


ALTER TABLE harish_member MODIFY MEMBER_NAME VARCHAR2(40);

ALTER TABLE Harish_Issue ADD Referenace CHAR(30);
ALTER TABLE Harish_Issue DROP column Referenace;

RENAME Harish_Issue TO Harish_Lib_Issue;

INSERT INTO harish_member VALUES(100,'Madesh','Chennai','10-DEC-22','Annual',2500,5,60);
INSERT INTO harish_member VALUES(101,'Loki','Avadi',SYSDATE,'Lifetime',1500,10,100);

INSERT INTO harish_member VALUES(103,'Rahul','RedHills','15-NOV-22','Lifetime',5500,16,80);
INSERT INTO harish_member VALUES(104,'Venkat','CMBT','17-DEC-22','Annual',6500,11,1000);
INSERT INTO harish_member VALUES(105,'Parveen','Chennai','19-DEC-22','Lifetime',9500,19,1250);
INSERT INTO harish_member VALUES(106,'Ironman','Stark',SYSDATE,'Annual',9999,1,10);
INSERT INTO harish_member VALUES(107,'Suriya','Sirucheri','14-NOV_22','Lifetime',2000,20,17);

ALTER TABLE harish_member MODIFY MEMBER_NAME VARCHAR2(20);
SELECT * FROM harish_member;

INSERT INTO harish_member VALUES(108,'Sathiya','Avadi','10-NOV_22','Lifetime',2050,100,7);

CREATE TABLE harish_member101 as SELECT * FROM harish_member

ALTER TABLE harish_member101 add CONSTRAINT res check ( MAX_BOOK_ALLOWED <100 or PENALTY_AMOUNT>1000);


ALTER TABLE harish_member101 add CONSTRAINT res22 check ( MAX_BOOK_ALLOWED <100);
SELECT *FROM harish_member101;

ALTER TABLE Harish_Book MODIFY Book_No NUMBER(7) PRIMARY KEY;
ALTER TABLE Harish_Book MODIFY Book_Name VARCHAR2(30) not Null;
Alter Table Harish_Book MODIFY Category varchar2(15) CHECK( Category='System' or Category='Science' or Category= 'Fiction' or Category= 'Database' or Category='RDBMS');

DESCRIBE Harish_Book;

Insert Into harish_book VALUES(100,'Java','Robert',450,'System');
Insert Into harish_book VALUES(101,'React','Albert',850,'RDBMS');
Insert Into harish_book VALUES(102,'Python','Loki',750,'Database');
Insert Into harish_book VALUES(103,'Sql','Madesh',1050,'Science');
Insert Into harish_book VALUES(104,'Spring','Rahul',550,'System');
SELECT *FROM harish_book;

Create Table Harish_Book101(Book_No NUMBER(6)PRIMARY KEY,Book_Name VARCHAR2(30),Author_Name VARCHAR2(30),Cost NUMBER(7,2),Category CHAR(10)CHECK( Category='System' or Category='Science' or Category= 'Fiction' or Category= 'Database' or Category='RDBMS'));

INSERT into Harish_Book101 SELECT
    *
FROM Harish_Book;
SELECT*FROM harish_book101;
Insert Into harish_book101 VALUES(105,'National Geographic','Adis Scott',1050,'Science');

select*from harish_book101;
rollback harish_book101 ;

Update harish_Book101 set cost=500,category='System' where book_No =101;

rename Harish_Lib_Issue to Harish_Issue;
drop table Harish_Issue;


Create table Harish_Lib_Issue(Lib_Issue_Id VARCHAR(20)PRIMARY KEY,Book_No REFERENCES harish_book(Book_No),
MEMBER_ID REFERENCES harish_member(Member_id),Issue_Date date ,Return_Date date ,check(Issue_Date < Return_date));
describe harish_lib_issue;

insert into Harish_Lib_Issue values(110,101,100,sysdate,Null);
insert into Harish_Lib_Issue values(111,102,103,sysdate,Null);
insert into Harish_Lib_Issue values(112,103,104,sysdate,Null);
insert into Harish_Lib_Issue values(113,104,105,sysdate,null);
insert into Harish_Lib_Issue values(114,100,106,sysdate,Null);

select*from Harish_Lib_Issue
drop table  Harish_Lib_Issue
DELETE FROM Harish_Lib_Issue  WHERE Member_id=100;
update Harish_Lib_Issue set return_date =to_date('10-MAY-22')+15 where Lib_Issue_Id=110
select* from Harish_Lib_Issue

select *from dual;

select round(45.626) from dual;
create table harish_product (product_id number(5) primary key,product_name VARCHAR(20),price NUMBER(8,2));
insert into harish_product values(101,'TV',450);
insert into harish_product values(102,'AC',550);
insert into harish_product values(103,'Computer',650);
insert into harish_product values(104,'fan',350);
select *from harish_product;


create table harish_invoice(invoice_number number(5) primary Key ,customer_name VARCHAR(20),quantity number(3),
product_ref REFERENCES harish_product(product_id));
insert into harish_invoice values(203,'RAHUL',3,102);
insert into harish_invoice values(204,'LOKI',4,103);
insert into harish_invoice values(205,'MAD',5,101);
insert into harish_invoice values(206,'RAM',6,104);


select*from harish_invoice;

select  hp.product_id,hp.product_name,hp.price,
hi.invoice_number,hi.customer_name,hi.quantity,hi.product_ref ,hi.quantity*hp.price
      
from harish_product hp,harish_invoice hi 
where hp.product_id=hi.product_ref;
DELETE FROM harish_invoice WHERE invoice_number=206;

select * from harish_product left outer join harish_invoice on  product_id=product_ref;

select * from harish_invoice right outer join harish_product on product_ref=product_id;

create view harish_product_view as select product_id,product_name from harish_product
select*from harish_product_view
insert into harish_product_view values(105,'Microwave')
select view_name,text from user_views where view_name='MADDY_PRODUCT_VIEW';
select *from user_views ;

 Create Index harish_product_index on harish_product(product_name);
 
create table harish_catalog(grade VARCHAR(1) PRIMARY KEY ,min_price number(10,2),max_price NUMBER(10,2));
insert into harish_catalog values ('A',5000,15000);
insert into harish_catalog values ('B',500,1500);
insert into harish_catalog values ('C',1499,4999);
select * from  harish_catalog
select *from harish_product;

update harish_product set price=2000 where product_id =104;


select p.product_name,p.price,c.grade
from harish_product p,harish_catalog c 
where p.price between c.min_price AND c. max_price;


create table harish_bill(bill_number NUMBER(5) primary key,bill_date date,amount number(10,2),cust_ref number(3))
create SEQUENCE harish_seq Start with 101 Increment by  1 maxvalue 1000;

insert into harish_bill values(harish_seq.nextval,sysdate+15,4500,405);
insert into harish_bill values(harish_seq.nextval,sysdate,4500,406);
insert into harish_bill values(harish_seq.nextval,sysdate,3500,407);
insert into harish_bill values(harish_seq.nextval,sysdate+20,4500,408);
insert into harish_bill values(harish_seq.nextval,sysdate+4,1500,409);


insert into harish_bill values(harish_seq.nextval,sysdate+9,4500,410);
insert into harish_bill values(harish_seq.nextval,sysdate,10000,411);


update harish_bill set bill_date=sysdate where cust_ref=405
SELECT * FROM harish_bill

drop table  harish_bill 
drop sequence harish_seq


insert into harish_bill values(harish_seq.nextval,sysdate+15,5500,410);
insert into harish_bill values(harish_seq.nextval,to_date('15-MAY-22')+15,5500,410);
insert into harish_bill values(harish_seq.nextval,add_months(('15-JUN-22'),2),550,411);
update harish_bill set cust_ref=409 where bill_number=123;
update harish_bill set cust_ref=4012 where bill_number=12;


select a.bill_number,a.amount from harish_bill a,harish_bill b where b.cust_ref=406 and a.amount=b.amount
commit;





