
CREATE TABLE Newbook
(
	bookid               VARCHAR2(40) NOT NULL ,
	bookname             VARCHAR2(40) NULL ,
	price                NUMBER NULL ,
	pubname              VARCHAR2(40) NOT NULL 
);



CREATE UNIQUE INDEX XPK���� ON Newbook
(bookid   ASC);



CREATE TABLE NewCustomer
(
	custid               NUMBER NOT NULL ,
	name                 VARCHAR2(40) NULL ,
	address              VARCHAR2(40) NULL ,
	phone                VARCHAR2(30) NULL 
);



CREATE UNIQUE INDEX XPK�� ON NewCustomer
(custid   ASC);



CREATE TABLE Neworder
(
	orderid              CHAR(18) NOT NULL ,
	bookid               NUMBER NOT NULL ,
	orderdate            DATE NULL ,
	saleprice            NUMBER NULL ,
	custid               NUMBER NOT NULL 
);



CREATE UNIQUE INDEX XPK����_�� ON Neworder
(orderid   ASC);



CREATE TABLE NewPublisher
(
	pubname              VARCHAR2(40) NOT NULL ,
	stname               VARCHAR2(40) NULL ,
	officephone          VARCHAR2(30) NULL 
);



CREATE UNIQUE INDEX XPK���ǻ� ON NewPublisher
(pubname   ASC);


