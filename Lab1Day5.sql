-- This given table is in the form of NF1 and NF2

--Now I converting NF2  to NF3 

-- creating table for given data
create table Lab1Day5(
User_ID varchar(10),
U_email varchar(20),
Fname varchar(20),
Lname varchar(20),
city varchar(20),
State varchar(20),
zip number(10)
);

-- creating procedure for inserting data into Lab1Day5 table
CREATE OR REPLACE PROCEDURE "INSERT_DATA" (User_ID in varchar,U_email in varchar,Fname in varchar,Lname in varchar,city in varchar,State in varchar,zip in number)
IS BEGIN 
INSERT INTO Lab1Day5 VALUES(User_ID,U_email,Fname,Lname,city,State,zip);
END;

-- inserting data into LAB1DAY5 using procedure
BEGIN
INSERT_DATA('MA12','alex@ymaii.com','Alex','Jones','Houston','Texas',75001);
INSERT_DATA('PO45','emma.john@gmail.co','Emma','Stone','Albany','New York',10008);
INSERT_DATA('LA33','victoria@yahoo.co','Victoria','Aurora','Istanbul','Turkey',34000);
INSERT_DATA('CH99','joe.1997@hotmail.com','Joe','Johnson','Los Angeles','California',90201);
INSERT_DATA('DA74','dlnay01@live.com','Dany','William','Miami','Florida',32006);
END;


--Converting from NF2 to NF3
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

------- BONUS ---------
-- this given table is in the form of NF1
create table bonus(
theater_name varchar2(20),
movie varchar2(20),
day_name varchar2(20),
show_time varchar2(20), -- I've to declare it as time but now I'm declaring it as varchar2 just for ex.
age_restriction number(5)
);
CREATE OR REPLACE PROCEDURE "BONUS_DATA" (theater_name in varchar2,movie in varchar2,day_name in varchar2,show_time in varchar2,age_restriction in varchar2)
IS BEGIN 
INSERT INTO BONUS VALUES(theater_name,movie,day_name,show_time,age_restriction);
END;

BEGIN 
BONUS_DATA('Chole','Avengers','wed','10:00',15);
BONUS_DATA('Chole','Avengers','wed','15:00',15);
BONUS_DATA('Summer','Titanic','Fri','10:00',15);
BONUS_DATA('Summer','Toy Story','Fri','10:00',12);
BONUS_DATA('Brooke','Toy Story','Thu','10:00',12);
END;





















