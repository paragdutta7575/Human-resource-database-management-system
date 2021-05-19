create database human_resource;

/* new database is created */

show databases;
use human_resource; 

/*Query for using this particular database */

create table countries 
(
country_id varchar(2) not null,   /* not nill means thAT THE VALUE should not be null*/
country_name varchar(40) default null, /*default means it will give null if value is not defined */
region_id decimal(10,0) default null,
primary key(country_id),
key country_reg_fk (region_id)
); 

/* table include countries in it */

insert into countries (country_id , country_name , region_id ) values 
('ar' , 'aergentina'  , '2'),
('au' , 'australia'  , '3'),
('ch' , 'switzerland'  , '7'),
('cn' , 'china'  , '4'),
('gr' , 'germany'  , '5'),
('id' , 'india'  , '3'),
('ey' , 'egypt'  , '7'),
('dn' , 'denmark'  , '5'),
('ic' , 'iceland'  , '9'),
('gn' , 'greenland'  , '7');

/* values which are added to the countries table */ 

select * from countries;

/* Query to show or  display elements present in the table*/
/*table structure*/

create table departments (
department_id decimal(4,0) not null default '0',
department_name varchar(30) not null ,
manager_id decimal(6,0) default null,
location_id decimal (4,0) default null,
primary key (department_id),
key dept_mgr_fk (manager_id),
key dept_location_ix (location_id) );

/*Query for departments table  */

show tables;

insert into departments (department_id, department_name , manager_id, location_id)values
( '10' , 'administration', '200', '1700'),
( '20' , 'marketing', '201', '1800'),
( '30' , 'purchasing', '114', '1700'),
( '40' , 'Human resources', '203', '2400'),
( '50' , 'shipping', '121', '1500'),
( '60' , 'it', '103', '1400'),
( '70' , 'public relations', '204', '2700'),
( '80' , 'sales', '145', '2500'),
( '90' , 'executive', '100', '1700'),
( '100' , 'administration', '200', '1700'),
( '110' , 'marketing', '201', '1700'),
( '120' , 'purchasing', '114', '1700'),
( '130' , 'Human resources', '203', '1700'),
( '140' , 'treasury', '0', '1700'),
( '150' , 'corporate tax', '0', '1700'),
( '160' , 'control and credit', '0', '1700'),
( '170' , 'shareholder services', '0', '1700'),
( '180' , 'benefits', '0', '1700'),
( '190' , 'manufacturing', '0', '1700'),
( '200' , 'construction', '0', '1700'),
( '210' , 'contracting', '0', '1700'),
( '220' , 'operations', '0', '1700'),
( '230' , 'it helpdesk', '0', '1700'),
( '240' , 'government sales ', '0', '1700'),
( '250' , 'retail sales ', '0', '1700'),
( '260' , 'recruiting ', '0', '1700'),
( '270' , 'payroll', '0', '1700')
;

select * from departments;

/* Query to show or  display elements present in the table*/

create table employee (
 employee_id decimal (6,0) not null default  0,
 first_name varchar (20) default null ,
 last_name varchar (25) not null ,
 email varchar (25) not null  ,
 phone_number varchar (20) default null ,
 hire_date date not null ,
 job_id varchar (10) not null ,
 salary decimal (8,2) default null,
 commission_pct decimal (2,2) default null,
 manager_id decimal (6,0)  default null,
 department_id decimal (4,0) default null ,
 primary key (employee_id),
 unique key emp_email_uk (email),
 key emp_departmment_ix (department_id))
;

show tables;
/* Query to show or  display elements present in the table*/

insert into employee (employee_id, first_name,last_name,email,phone_number,hire_date,job_id , salary , commission_pct, manager_id, department_id) values
("100","steven" ,"king","sking","585.123.4567","1987-06-27","ad_pres","24000.00","0.00",'0','90'),
("101","stefen" ,"span","skpng","515.123.4567","1937-09-07","ad_pres","24000.00","0.00",'0','90'),
("102","oraclu" ,"yearn","mling","518.123.4567","1977-06-12","ad_pres","24000.00","0.00",'0','90'),
("103","clara" ,"yking","lping","515.823.4567","1968-06-18","ad_pres","24000.00","0.00",'0','90'),
("104","naveen" ,"inkg","skipg","515.121.4567","1988-06-11","ad_pres","24000.00","0.00",'0','90'),
("105","navdeep" ,"pans","pking","515.833.4567","1987-02-17","ad_pres","24000.00","0.00",'0','90'),
("106","inder" ,"nikg","skene","515.123.2667","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("107","aditya" ,"gyuo","seinr","515.123.6562","1987-06-14","ad_pres","24000.00","0.00",'0','90'),
("108","aggarwal" ,"mant","skfng","515.163.4267","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("109","harsh" ,"bhutto","skkc","515.183.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("110","seven" ,"sunx","skdvdz","515.193.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("120","ritik" ,"kkort","bking","515.423.4567","1982-06-17","ad_pres","24000.00","0.00",'0','90'),
("130","mohn" ,"linhd","skplg","515.193.4567","1982-06-11","ad_pres","24000.00","0.00",'0','90'),
("140","ali" ,"karol","skil","515.129.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("150","amir" ,"kamphor","hjng","515.923.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("160","salman" ,"kampkr","skng","515.123.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("170","barara" ,"krl","jing","516.123.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90'),
("180","mandoli" ,"karal","skigg","715.123.4567","1987-06-17","ad_pres","24000.00","0.00",'0','90');

show tables;
select * from employee;

/* Query to show or  display elements present in the table*/

create table job_history (
employee_id decimal(6,0) not null,
start_date date not null ,
end_date date not null ,
job_id varchar(10) not null ,
department_id decimal(4,0) default null,
primary key (employee_id,start_date),
key jhist_department_ix (department_id),
key jhist_employee_ix (employee_id)
);

insert into job_history (employee_id,start_date,end_date,job_id,department_id ) values 
('102','1990-07-01','1998-08-09','it_prog','70'),
('103','1990-07-01','1998-08-09','ac_account','80'),
('104','1990-07-01','1998-08-09','ac_mgr','90'),
('105','1990-07-01','1998-08-09','mk_rep','70'),
('106','1990-07-01','1998-08-09','st_clerk','70'),
('107','1990-07-01','1998-08-09','st_clerk','70'),
('108','1990-07-01','1998-08-09','ad_asst','20'),
('109','1990-07-01','1998-08-09','ss_rep','60'),
('110','1990-07-01','1998-08-09','it_prog','70'),
('111','1990-07-01','1998-08-09','it_prog','70'),
('112','1990-07-01','1998-08-09','it_prog','70')
;
select * from job_history;

/* Query to show or  display elements present in the table*/

create table jobs (
job_id varchar (10) not null default '',
job_title varchar (35) not null,
min_salary decimal (6,0) default null, 
max_salary decimal (6,0) default null,
primary key (job_id)
);

select * from jobs;

/* Query to show or  display elements present in the table*/

show tables;
insert into jobs (job_id, job_title,min_salary,max_salary) values 
("1208" , "adv_vice" , "40000" , "50000" ),
("1209" , "adv_avp" , "43000" , "56000" ),
("1210" , "adv_asi" , "41000" , "50000" ),
("1211" , "asi" , "30000" , "45000" ),
("1212" , "si" , "46000" , "65000" ),
("1213" , "sub_ins" , "40000" , "50000" ),
("1214" , "ins" , "40000" , "50000" ),
("1215" , "vice_chnchlr" , "43000" , "65000" ),
("1216" , "chlr" , "44000" , "76000" ),
("1217" , "adv" , "40500" , "54000" ),
("1218" , "legal_advr" , "40000" , "54000" ),
("1219" , "vice_prsdt" , "70000" , "150040" )
;
select * from  jobs;
/* Query to show or  display elements present in the table*/

select first_name as "first name " , last_name as "last_name" from employee;

/*using alais */

select distinct department_id from employee;
/* USING DISTINT KEYWORD */

select * from employee order by first_name desc ;

/* in ascending order we dont have to state asc its automatically do in ascending order */

select sum(salary) as total_salary
from employee;

select max(salary) as max_salary, min(salary) as min_salary from employee;

select first_name , last_name ,length(first_name)+length(last_name) 'length of lines ' from employee;











/* sql project by Parag Dutta */