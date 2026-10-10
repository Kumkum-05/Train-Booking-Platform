create database reservation;
use reservation;

create table CUSTOMER(
MAILID varchar(40) primary key,
PWORD varchar(255) not null,
FNAME varchar(20) not null,
LNAME varchar(20),
ADDR varchar(100),
PHNO varchar(15) not null
);

create table ADMIN(
MAILID varchar(40) primary key,
PWORD varchar(255) not null,
FNAME varchar(20) not null,
LNAME varchar(20),
ADDR varchar(100),
PHNO varchar(15) not null
);

create table train(
TNUMBER int primary key,
TNAME varchar(50) not null,
SOURCE varchar(50) not null,
DESTINATION varchar(50) not null,
SEATS int not null,
FARE decimal(10,2) not null
);

create table history(
MAILID varchar (40) not null,
TNUMBER int not null,
JOURNEY_DATE date not null,
SEATS int not null,
AMOUNT decimal(10,2) not null,
FOREIGN KEY (MAILID) references CUSTOMER(MAILID),
FOREIGN KEY (TNUMBER) references TRAIN(TNUMBER)
);

CREATE TABLE train (
  tr_no     BIGINT PRIMARY KEY,
  tr_name   VARCHAR(70) NOT NULL,
  from_stn  VARCHAR(20) NOT NULL,
  to_stn    VARCHAR(20) NOT NULL,
  seats     INT NOT NULL,
  fare      DECIMAL(6,2) NOT NULL
);

CREATE TABLE history (
  transid   VARCHAR(36) PRIMARY KEY,
  mailid    VARCHAR(40),
  tr_no     BIGINT,
  date    DATE,
  from_stn  VARCHAR(20) NOT NULL,
  to_stn    VARCHAR(20) NOT NULL,
  seats     INT NOT NULL,
  amount    DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (mailid) REFERENCES customer(mailid)
);

INSERT INTO admin VALUES ('admin@demo.com','admin','System','Admin','Demo Address 123 colony',9874561230);
INSERT INTO customer VALUES ('shashi@demo.com','shashi','Shashi','Raj','Kolkata, West Bengal',954745222);

INSERT INTO train VALUES (10001,'JODHPUR EXP','HOWRAH','JODHPUR',152,490.50);
INSERT INTO train VALUES (10002,'YAMUNA EXP','GAYA','DELHI',52,550.50);
INSERT INTO train VALUES (10003,'NILANCHAL EXP','GAYA','HOWRAH',92,451);
INSERT INTO train VALUES (10004,'JAN SATABDI EXP','RANCHI','PATNA',182,550);
INSERT INTO train VALUES (10005,'GANGE EXP','MUMBAI','KERALA',12,945);
INSERT INTO train VALUES (10006,'GARIB RATH EXP','PATNA','DELHI',1,1450.75);
INSERT INTO train VALUES (10008,'MUMBAI MAIL','HAWRAH','MUMBAI',100,2150.75);
INSERT INTO train VALUES (10007,'AJMER-SEALDAH EXP','SEALDAH','AJMER',120,1000.50);

INSERT INTO history VALUES ('BBC374-NSDF-4673','shashi@demo.com',10001,'2024-02-02','HOWRAH','JODHPUR',2,981);
INSERT INTO history VALUES ('BBC375-NSDF-4675','shashi@demo.com',10004,'2024-01-12','RANCHI','PATNA',1,550);
INSERT INTO history VALUES ('BBC373-NSDF-4674','shashi@demo.com',10006,'2024-07-22','PATNA','DELHI',3,4352.25);
