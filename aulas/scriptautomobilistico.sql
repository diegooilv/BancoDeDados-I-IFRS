create table equipe (
	idequipe serial not null primary key,
	nomeequipe varchar(50) not null,
	paisequipe varchar(50),
	motorequipe varchar(50)
);

create table piloto (
	idpiloto serial not null primary key,
	nomepiloto varchar(50) not null,
	datanascimento date,
	paispiloto varchar(50),
	idequipe int
);

create table corrida (
	idcorrida serial not null primary key,
	localcorrida varchar(50) not null
);

create table classificacao (
	idclassificacao serial not null primary key,
	idpiloto int not null,
	idcorrida int not null,
	posicaochegada int
);

insert into equipe (nomeequipe,motorequipe) values ('Ferrari','Ferrari Type 056'); --1
insert into equipe (nomeequipe,motorequipe) values ('McLaren','Mercedes-Benz FO 108V'); --2
insert into equipe (nomeequipe,motorequipe) values ('BMW Sauber','BMW'); --3
insert into equipe (nomeequipe,motorequipe) values ('Williams','Toyota'); --4
insert into equipe (nomeequipe,motorequipe) values ('Red Bull','Renault RS27'); --5
insert into equipe (nomeequipe,motorequipe) values ('Toyota','Toyota RVX-08'); --6
insert into equipe (nomeequipe,motorequipe) values ('Renault','Renault RS27'); --7
insert into equipe (nomeequipe,motorequipe) values ('Toro Rosso','Ferrari'); --8
insert into equipe (nomeequipe,motorequipe) values ('Honda','Honda RA808E'); --9
insert into equipe (nomeequipe,motorequipe) values ('Force India','Ferrari'); --10
insert into equipe (nomeequipe,motorequipe) values ('Super Aguri','Honda'); --11

insert into corrida (localcorrida) values ('Austrália'); --1
insert into corrida (localcorrida) values ('Malásia'); --2
insert into corrida (localcorrida) values ('Bahrein'); --3
insert into corrida (localcorrida) values ('Espanha'); --4
insert into corrida (localcorrida) values ('Turquia'); --5
insert into corrida (localcorrida) values ('Mônaco'); --6
insert into corrida (localcorrida) values ('Canadá'); --7
insert into corrida (localcorrida) values ('França'); --8
insert into corrida (localcorrida) values ('Inglaterra'); --9
insert into corrida (localcorrida) values ('Alemanha'); --10
insert into corrida (localcorrida) values ('Hungria'); --11
insert into corrida (localcorrida) values ('Europa'); --12
insert into corrida (localcorrida) values ('Bélgica'); --13
insert into corrida (localcorrida) values ('Itália'); --14
insert into corrida (localcorrida) values ('Cingapura'); --15
insert into corrida (localcorrida) values ('Japão'); --16
insert into corrida (localcorrida) values ('China'); --17 
insert into corrida (localcorrida) values ('Brasil'); --18

insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Kimi Räikkönen','1979-10-17','Finlândia',1); --1
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Felipe Massa','1981-04-25','Brasil',1); --2
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Lewis Hamilton','1985-01-07','Inglaterra',2); --3
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Heikki Kovalainen','1981-10-19','Finlândia',2); --4
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Nick Heidfeld','1977-05-10','Alemanha',3); --5
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Robert Kubica','1984-12-07','Polônia',3); --6
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Nico Rosberg','1985-06-27','Alemanha',4); --7 
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Kazuki Nakajima','1985-01-11','Japão',4); --8
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('David Coulthard','1971-03-27','Escócia',5); --9 
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Mark Webber','1976-08-27','Austrália',5); --10
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Jarno Trulli','1974-07-13','Itália',6); --11 
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Timo Glock','1982-03-18','Alemanha',6); --12
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Fernando Alonso','1981-07-29','Espanha',7); --13
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Nelsinho Piquet','1985-07-25','Brasil',7); --14
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Sebastien Bourdais','1979-10-28','França',8); --15
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Sebastian Vettel','1987-07-03','Alemanha',8); --16
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Jenson Button','1980-01-19','Inglaterra',9); --17
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Rubens Barrichello','1972-05-23','Brasil',9); --18
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Adrian Sutil','1983-01-11','Alemanha',10); --19
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Giancarlo Fisichella','1973-01-14','Itália',10); --20
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Takuma Sato','1977-01-28','Japão',11); --21
insert into piloto (nomepiloto,datanascimento,paispiloto,idequipe) values ('Anthony Davidson','1979-04-18','Inglaterra',11); --22

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,3,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,5,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,7,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,13,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,4,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,8,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,15,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,1,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,6,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,12,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,21,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,14,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,2,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,9,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,11,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,19,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,10,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,17,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,22,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,16,20); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,20,21); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (1,18,22); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,1,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,6,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,4,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,11,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,3,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,5,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,10,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,13,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,9,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,17,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,14,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,20,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,18,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,7,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,22,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,21,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,8,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,16,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,2,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,19,20); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,12,21); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (2,15,22); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,2,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,1,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,6,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,5,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,4,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,11,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,10,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,7,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,12,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,13,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,18,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,20,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,3,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,8,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,15,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,22,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,21,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,9,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,19,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,14,20); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,17,21); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (3,16,22); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,1,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,2,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,3,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,6,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,10,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,17,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,8,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,11,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,5,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,20,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,12,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,9,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,21,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,7,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,13,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,18,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,4,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,22,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,15,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,14,20); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,19,21); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (4,16,22); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,2,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,3,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,1,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,6,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,5,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,13,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,10,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,7,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,9,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,11,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,17,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,4,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,12,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,18,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,14,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,19,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,16,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,15,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,8,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (5,20,20); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,3,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,6,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,2,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,10,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,16,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,18,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,8,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,4,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,1,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,13,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,17,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,12,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,11,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,5,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,19,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,7,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,14,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,20,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,9,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (6,15,20); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,6,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,5,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,9,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,12,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,2,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,11,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,18,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,16,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,4,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,7,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,17,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,10,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,15,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,20,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,8,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,13,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,14,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,1,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,3,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (7,19,20); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,2,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,1,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,11,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,4,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,6,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,10,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,14,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,13,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,9,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,3,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,12,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,16,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,5,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,18,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,8,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,7,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,15,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,20,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,19,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (8,17,20); 

insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,3,1); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,5,2); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,18,3); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,1,4); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,13,5); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,4,6); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,11,7); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,8,8); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,7,9); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,10,10); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,15,11); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,12,12); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,2,13); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,6,14); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,17,15); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,14,16); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,20,17); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,19,18); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,16,19); 
insert into classificacao (idcorrida,idpiloto,posicaochegada) values (9,9,20); 