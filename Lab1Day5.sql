create table Lab1Day5(
User_ID varchar(10),
U_email varchar(20),
Fname varchar(20),
Lname varchar(20),
city varchar(20),
State varchar(20),
zip number(10)
);

CREATE OR REPLACE PROCEDURE "INSERT_DATA" (User_ID in varchar,U_email in varchar,Fname in varchar,Lname in varchar,city in varchar,State in varchar,zip in number)
IS BEGIN 
INSERT INTO Lab1Day5 VALUES(User_ID,U_email,Fname,Lname,city,State,zip);
END;

BEGIN
INSERT_DATA('MA12','alex@ymaii.com','Alex','Jones','Houston','Texas',75001);
INSERT_DATA('PO45','emma.john@gmail.co','Emma','Stone','Albany','New York',10008);
INSERT_DATA('LA33','victoria@yahoo.co','Victoria','Aurora','Istanbul','Turkey',34000);
INSERT_DATA('CH99','joe.1997@hotmail.com','Joe','Johnson','Los Angeles','California',90201);
INSERT_DATA('DA74','dlnay01@live.com','Dany','William','Miami','Florida',32006);
END;

create table NF3(
User_ID varchar(10),
U_email varchar(20),
Fname varchar(20),
Lname varchar(20),
zip number(10)
);
CREATE OR REPLACE PROCEDURE "NF3_1_DATA" (User_ID in varchar,U_email in varchar,Fname in varchar,Lname in varchar,zip in number)
IS BEGIN 
INSERT INTO NF3 VALUES(User_ID,U_email,Fname,Lname,zip);
END;

BEGIN
NF3_1_DATA('MA12','alex@ymaii.com','Alex','Jones',75001);
NF3_1_DATA('PO45','emma.john@gmail.co','Emma','Stone',10008);
NF3_1_DATA('LA33','victoria@yahoo.co','Victoria','Aurora',34000);
NF3_1_DATA('CH99','joe.1997@hotmail.com','Joe','Johnson',90201);
NF3_1_DATA('DA74','dlnay01@live.com','Dany','William',32006);
END;

create table NF3_1(
city varchar(20),
State varchar(20),
zip number(10)
);
CREATE OR REPLACE PROCEDURE "NF3_2_DATA" (city in varchar,State in varchar,zip in number)
IS BEGIN 
INSERT INTO NF3_1 VALUES(city,State,zip);
END;

BEGIN
NF3_2_DATA('Houston','Texas',75001);
NF3_2_DATA('Albany','New York',10008);
NF3_2_DATA('Istanbul','Turkey',34000);
NF3_2_DATA('Los Angeles','California',90201);
NF3_2_DATA('Miami','Florida',32006);
END;

select * from lab1day5;