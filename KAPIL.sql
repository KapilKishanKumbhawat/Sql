/* CREATE DATABASE*/

create database Kapil123

/* CREATE TABLE */
create table StudentChetu(
id int ,
name varchar(30),
email varchar(30)


)

/* INSERT TABLE DATA*/

insert into StudentChetu Values (5,'kapil','kapil@gmail.com') ,
(6,'abhijeet','abhi@gmail.com'),
(7,'Ashutoosh','ashutoosh@gmail.com'),
(8,'parveen','parveen@gmail.com')

/* Use For DATABASE EXITISING*/
use Kapil123

/* select  Statment*/
select * from StudentChetu
select * from StudentChetu1

/* where Statment*/
select email,name from StudentChetu where id=2

/* Update Statment*/
update StudentChetu set id=1, name='kapil', email='kapil@gmail.com' where id=2 

/* Delete Statment*/
delete from StudentChetu where id=1

/* Drop Statment*/
drop table StudentChetu DROP COLUMN email



/* inner join*/
select * FROM StudentChetu inner join studentChetu1 on StudentChetu.id = StudentChetu1.id

/* left join*/
select * FROM StudentChetu left join studentChetu1 on StudentChetu.id = StudentChetu1.id

/* right join*/
select * FROM StudentChetu right join studentChetu1 on StudentChetu.id = StudentChetu1.id

/* Equi join*/
select * from StudentChetu,studentChetu1 where StudentChetu.id = StudentChetu1.id

/*Full Outer Join*/
select * from StudentChetu full outer join StudentChetu1 on StudentChetu.id=StudentChetu1.id

/* Self Join */

select * from StudentChetu 
Where StudentChetu as e1, StudentChetu1 as e2 
where e1.name = e2.name 
and e1.email='kapil@gmail.com'; /* error show in table*/



/* union */


select name from StudentChetu
UNION ALL
SELECT name from StudentChetu1


/* Begin TRANSACTION*/

USE Kapil123

select * from StudentChetu


begin transaction 
delete from StudentChetu where id=1


begin transaction
rollback


/* Save Transaction*/

begin transaction 
delete from StudentChetu where id=1
delete from StudentChetu where id=2
save transaction Test1
delete from StudentChetu where id=3

begin transaction Test1
rollback


/* database Particular column name Change */

select * from StudentChetu

alter table StudentChetu
CHANGE phone salary varchar (50)  
