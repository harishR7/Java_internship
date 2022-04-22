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
insert into Harish_Lib_Issue values(109,100,107,'23-APR-22','23-MAY-22');
insert into Harish_Lib_Issue values(110,101,100,sysdate,'22-MAY-22');
insert into Harish_Lib_Issue values(111,102,103,sysdate,'29-MAY-22');
insert into Harish_Lib_Issue values(112,103,104,sysdate,'27-MAY-22');
insert into Harish_Lib_Issue values(113,104,105,sysdate,'28-MAY-22');

select*from Harish_Lib_Issue

DELETE FROM Harish_Lib_Issue  WHERE Member_id=100;











