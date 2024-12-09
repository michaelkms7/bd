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
CREATE TABLE bp (
    id_bp integer,  
    bp_name text,
    bp_type text,
    PRIMARY KEY (id_bp) 
);
CREATE TABLE tank_bp (
    id_tank integer,  
    id_bp integer,
    PRIMARY KEY (id_tank, id_bp) 
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

insert into bp (id_bp, bp_name, bp_type) values (1, '3БМ60', 'бронебойный оперенный подкалиберный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (2, 'ЗБК29М', 'куммулятивный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (3, 'ЗОФ26', 'осколочно-фугасный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (4, 'DM43', 'бронебойный оперенный подкалиберный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (5, 'DM12', 'куммулятивно-осколочный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (6, 'М900', 'бронебойный оперенный подкалиберный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (7, 'М456А1', 'куммулятивный снаряд');
insert into bp (id_bp, bp_name, bp_type) values (8, 'М393А2', 'бронебойный-фугасный снаряд');

insert into tank_bp (id_tank, id_bp) values (1, 1);
insert into tank_bp (id_tank, id_bp) values (1, 2);
insert into tank_bp (id_tank, id_bp) values (1, 3);
insert into tank_bp (id_tank, id_bp) values (2, 1);
insert into tank_bp (id_tank, id_bp) values (2, 2);
insert into tank_bp (id_tank, id_bp) values (2, 3);
insert into tank_bp (id_tank, id_bp) values (3, 1);
insert into tank_bp (id_tank, id_bp) values (3, 2);
insert into tank_bp (id_tank, id_bp) values (3, 3);
insert into tank_bp (id_tank, id_bp) values (4, 4);
insert into tank_bp (id_tank, id_bp) values (4, 5);
insert into tank_bp (id_tank, id_bp) values (5, 6);
insert into tank_bp (id_tank, id_bp) values (5, 7);
insert into tank_bp (id_tank, id_bp) values (5, 8);

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
