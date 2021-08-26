Create table Lexus(id integer Primary key, style text,model text,mpg integer, price integer);  

insert into lexus values(1,"sedan","IS", 26, 39050);
insert into lexus values(2,"sedan","ES", 44, 40000);
insert into lexus values(3,"sedan","ES 300h", 44, 41910);
insert into lexus values(4,"sedan","LS", 29, 76000);
insert into lexus values(5,"sedan","LS 500h", 29, 90500);
insert into lexus values(6,"SUV","UX", 40, 33000);
insert into lexus values(7,"SUV","NX", 31, 37610);
insert into lexus values(8,"SUV","RX", 30, 45220);
insert into lexus values(9,"SUV","GX", 17, 53450);
insert into lexus values(10,"SUV","LX", 14, 86930);
insert into lexus values(11,"coupes","RC",26, 42220);
insert into lexus values(12,"coupes","RC F",20, 65975);
insert into lexus values(13,"coupes","LC",30, 93050);
insert into lexus values(14,"coupes","LC 500h",30, 97610);
insert into lexus values(15,"coupes","LC conv.",20, 101100);

select * from lexus;

select * from lexus order by price;

select style, avg(price) from lexus group by style
