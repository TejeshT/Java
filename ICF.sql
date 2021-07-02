create table Employee
(id varchar(10) primary key, firstname varchar(30),lastname varchar(30),
employeeid varchar(10) not null, startdate date,designation varchar(30), departement varchar(20),
enddate date,status varchar(20),dob date,reportingmanager varchar(30), gender varchar(1),
bloodgroup varchar(6), address varchar(50)
);

create table Dependents
( id varchar(10), firstname varchar(30), lastname varchar(30), gender varchar(1), dob date,
relationship varchar(20),
foreign key (id) references Employee(id)
);

create table EducationalQualification
 ( id varchar(10),type varchar(10), startdate date,enddate date,Institution varchar(30),
 address varchar(50), percentage float(3)
 check(percentage<=100),
 foreign key (id) references Employee(id)
 );

 insert into Employee values("123","Tejesh","T","99890","2021-07-02","developer","MIcrosoft","2021-09-24","working","2002-11-05","Rahul","Male","b+ve","Electroniccity");

  insert into Employee values(124,"Ram","Gopal","98765","2021-07-12","developer","InterSys","2021-10-24","released","1994-12-25","Hulk","Male","o+ve","Electroniccity");

   insert into Employee values(125,"Sid","Sriram","98567","2021-07-13","developer","Gobal","2021-12-24","onboarded","1994-12-25","Kumar","Male","ab+ve","Electroniccity");
 
 select * from Employee;
