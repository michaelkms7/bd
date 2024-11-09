CREATE TABLE tank (
    id_tank integer,  
    tank_name text,
    PRIMARY KEY (id_tank) 
);
CREATE TABLE weap (
    id_weap integer,  
    weap_name text,
    PRIMARY KEY (id_weap) 
);
CREATE TABLE tank_weap (
    id_tank integer,  
    id_weap integer,
    PRIMARY KEY (id_tank, id_weap) 
);
CREATE TABLE chars (
    id_chars integer,  
    chars_name text,
    chars_valume text,
    id_tank integer,
    PRIMARY KEY (id_chars) 
);
insert into tank (id_tank, tank_name) values (1, 'Т-90');
insert into tank (id_tank, tank_name) values (2, 'Т-72');
insert into tank (id_tank, tank_name) values (3, 'Т-80');
insert into tank (id_tank, tank_name) values (4, 'M1 Abrams');
insert into tank (id_tank, tank_name) values (5, 'Leopard 2');

insert into weap (id_weap, weap_name) values (1, 'Пушка 125мм');
insert into weap (id_weap, weap_name) values (2, 'Пушка 120мм');
insert into weap (id_weap, weap_name) values (3, 'Пулемет 7.62 НСВТ');
insert into weap (id_weap, weap_name) values (4, '12,7-мм M2HB'); 
insert into weap (id_weap, weap_name) values (5, 'Пулемет 7.62 MG3');

insert into tank_weap (id_tank, id_weap) values (1, 1);
insert into tank_weap (id_tank, id_weap) values (1, 3);
insert into tank_weap (id_tank, id_weap) values (2, 1);
insert into tank_weap (id_tank, id_weap) values (2, 3);
insert into tank_weap (id_tank, id_weap) values (3, 1);
insert into tank_weap (id_tank, id_weap) values (3, 3);
insert into tank_weap (id_tank, id_weap) values (4, 2);
insert into tank_weap (id_tank, id_weap) values (4, 4);
insert into tank_weap (id_tank, id_weap) values (5, 2);
insert into tank_weap (id_tank, id_weap) values (5, 5);

insert into chars (id_chars, chars_name, chars_valume, id_tank) values (1, 'Масса, т.', '40', 1);
insert into chars (id_chars, chars_name, chars_valume, id_tank) values (2, 'Максимальная скорость, км', '70', 1);

insert into chars (id_chars, chars_name, chars_valume, id_tank) values (3, 'Масса, т.', '41', 2);
insert into chars (id_chars, chars_name, chars_valume, id_tank) values (4, 'Максимальная скорость, км', '85', 2);

insert into chars (id_chars, chars_name, chars_valume, id_tank) values (5, 'Масса, т.', '46', 3);
insert into chars (id_chars, chars_name, chars_valume, id_tank) values (6, 'Максимальная скорость, км', '70', 3);

insert into chars (id_chars, chars_name, chars_valume, id_tank) values (7, 'Масса, т.', '40', 4);
insert into chars (id_chars, chars_name, chars_valume, id_tank) values (8, 'Максимальная скорость, км', '70', 4);

insert into chars (id_chars, chars_name, chars_valume, id_tank) values (9, 'Масса, т.', '40', 5);
insert into chars (id_chars, chars_name, chars_valume, id_tank) values (10, 'Максимальная скорость, км', '70', 5);
