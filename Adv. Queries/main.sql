create table F1_grid(
    driver text,
    team text,
    qual numeric,
    points numeric,
    wins integer,
    podiums integer
);

insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Lewis Hamilton","Mercedes",2.42,202.5,4,9);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Valterri Bottas","Mercedes",4.25,108,0,6);   
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Max Verstappen","Red Bull",1.92,199.5,6,9); 
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Sergio Pérez","Red Bull",5.75,104,1,2); 
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Lando Norris","McLaren",6.42,113,0,3); 
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Daniel Ricciardo","McLaren",10,56,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Carlos Sainz Jr","Ferrari",8.67,83.5,0,2);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Charles Leclerc","Ferrari",5.83,82,0,1); 
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Esteban Ocon","Alpine",11.17,42,1,1);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Fernando Alonso","Alpine",11.58,38,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Pierre Gasly","Alphatauri",6.83,54,0,1);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Yuki Tsunoda","Alphatauri",13.73,18,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Sebastian Vettel","Aston Martin",10.92,35,0,1);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Lance Stroll","Aston Martin",12.91,18,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("George Russell","Williams",12,13,0,1); 
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Nicholas Latifi","Williams",16.67,7,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Kimi Räikkönen","Alfa Romeo",15.83,2,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Antonio Giovinazzi","Alfa Romeo",13.72,1,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Mick Schumacher","Haas",18.27,0,0,0);
insert into F1_grid(driver,team,qual,points,wins,podiums)
    values("Nikita Mazepin","Haas",19.42,0,0,0);

/*select* from f1_grid;*/

/*select driver,(points/12)Points_Per_Race from f1_grid order by Points_Per_Race desc;  could have used avg function if I put each race individually*/

select team, sum(points) as Constructor_Title from f1_grid group by team order by Constructor_Title desc;

select team, points/sum(qual) as car_rating from f1_grid group by team order by car_rating desc;

select driver,podiums,
    case
        when points>100 then "A"
        when points>40 then "B"
        when points>10 then "C"
        else "D"
    end as "Driver_grade"
from f1_grid
order by driver_grade;

select driver from f1_grid where points>100 and qual<6;





  
