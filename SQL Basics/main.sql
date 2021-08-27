Create table Lexus
    (id integer Primary key autoincrement,
    style text,
    model text, 
    mpg integer,
    price integer);  

insert into lexus(style,model,mpg,price) values("sedan","IS", 26, 39050);
insert into lexus(style,model,mpg,price) values("sedan","ES", 44, 40000);
insert into lexus(style,model,mpg,price) values("sedan","ES 300h", 44, 41910);
insert into lexus(style,model,mpg,price) values("sedan","LS", 29, 76000);
insert into lexus(style,model,mpg,price) values("sedan","LS 500h", 29, 90500);
insert into lexus(style,model,mpg,price) values("SUV","UX", 40, 33000);
insert into lexus(style,model,mpg,price) values("SUV","NX", 31, 37610);
insert into lexus(style,model,mpg,price) values("SUV","RX", 30, 45220);
insert into lexus(style,model,mpg,price) values("SUV","GX", 17, 53450);
insert into lexus(style,model,mpg,price) values("SUV","LX", 14, 86930);
insert into lexus(style,model,mpg,price) values("coupes","RC",26, 42220);
insert into lexus(style,model,mpg,price) values("coupes","RC F",20, 65975);
insert into lexus(style,model,mpg,price) values("coupes","LC",30, 93050);
insert into lexus(style,model,mpg,price) values("coupes","LC 500h",30, 97610);
insert into lexus(style,model,mpg,price) values("coupes","LC conv.",20, 101100);

select * from lexus;

select * from lexus order by price;

select style, avg(price) from lexus group by style
