/*INSERT GENERALES BASE DE DATOS DE CROSSFIT*/

USE CROSSFIT;

#TABLAS INDEPENDIENTES
INSERT INTO area_movimiento(id_area_mov, nombre)  VALUES (1, 'Ejercicios Metabólicos');
INSERT INTO area_movimiento(id_area_mov, nombre)  VALUES (2, 'Ejercicios Gimnásticos');
INSERT INTO area_movimiento(id_area_mov, nombre)  VALUES (3, 'Ejercicios de Halterofilia');

INSERT INTO categoria_wod(id_categoria, nombre, descripcion)
VALUES(1, 'Deefinida por el Gimansio', 'Hace referencaia a un WOD personalizado por el Gimansio ');
INSERT INTO categoria_wod(id_categoria, nombre, descripcion)
VALUES(2, 'The Heroes', 'Los nombres de estos WOD hacen referencaia a los héroes caídos en batalla de las Fuerzas Élite de USA');
INSERT INTO categoria_wod(id_categoria, nombre, descripcion)
VALUES(3, 'The Girls', 'Este es un grupo especial de entrenamientos de referencia para medir el progreso del atleta');

INSERT INTO warm_up(id_warmup, descripcion, duracion_muinutos) VALUES (1,'Ejercicios de calentamiento por 10 minutos', 10);
INSERT INTO warm_up(id_warmup, descripcion, duracion_muinutos) VALUES (2,'Ejercicios de calentamiento por 15 minutos', 15);
INSERT INTO warm_up(id_warmup, descripcion, duracion_muinutos) VALUES (3,'Ejercicios de calentamiento por 12 minutos', 12);

INSERT INTO especialidad(id_especialidad, nombre_area_especialidad, duracion_munutos, descripcion)
VALUES(1,'Skills',15,'Habilidades gimnasticas del atleta');
INSERT INTO especialidad(id_especialidad, nombre_area_especialidad, duracion_munutos, descripcion)
VALUES(2,'Fuerza',15,'Ejercicios que fomentan la fuerza del atleta');
INSERT INTO especialidad(id_especialidad, nombre_area_especialidad, duracion_munutos, descripcion)
VALUES(3,'Lifting',15,'Ejercicios de levantamiento olímpico');
INSERT INTO especialidad(id_especialidad, nombre_area_especialidad, duracion_munutos, descripcion)
VALUES(4,'Complex',15,'Ejercicios varios que involucran únicamente barras, durante un complexno puede soltarse la barra.');

INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (1, 'AMRAP', 'As Many Rounds As Possible.Rondas de un grupo de ejercicios que se puedan completar durante un tiempo establecido');
INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (2, 'EMOM', 'Every Minute On the Minute. Variaciones de ejercicios cada minuto durante un minuto');
INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (3, 'ForTime', 'Completar un Wod en cierta cantidad de tiempo establecida');
INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (4, 'TABATA', 'Trabajo en dos intervalos de tiempo, uno largo de trabajo intenso y otro mas corto de descanso');
INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (5, 'For Max Weigth', 'Debe trabajarse el tiempo que sea necesario hasta completar un peso especifico');
INSERT INTO modalidad(id_modalidad, nombre, descripcion)
VALUES (6, 'AFAP', 'As Fast As Possible. Cuanto tiempo taradas en completar todo el WOD');

INSERT INTO tipo_puntuacion(id_tipo_puntuacion, descripcion) VALUES(1, 'Rondas');
INSERT INTO tipo_puntuacion(id_tipo_puntuacion, descripcion) VALUES(2, 'Tiempo');
INSERT INTO tipo_puntuacion(id_tipo_puntuacion, descripcion) VALUES(3, 'Repeticiones');

INSERT INTO unidad_medida
    (id_u_medida, nombre)
VALUES (1, 'Cantidad Repeticiones'),
       (2, 'Altura'),
       (3, 'Peso'),
       (4, 'Distancia');

INSERT INTO tipo_persona(id_tipo_persona, nombre_tipo) VALUES(1, 'Atleta');
INSERT INTO tipo_persona(id_tipo_persona, nombre_tipo) VALUES(2, 'Entrenador');

INSERT INTO horario
    (id_horario, hora_inicio, hora_fin)
VALUES
       (1,'5:00AM','6:00AM'), #Lunes a viernes
       (2,'6:00AM','7:00AM'), #Lunes a viernes
       (3,'7:00AM','8:00AM'), #Lunes a viernes
       (4,'12:00PM','1:00PM'),#Lunes a viernes
       (5,'4:30PM','5:30PM'), #Lunes a viernes
       (6,'5:30PM','6:30PM'), #Lunes a viernes
       (7,'6:30PM','7:30PM'), #Lunes a viernes
       (8,'7:30PM','8:30PM'), #Lunes a viernes
       (9,'8:00AM','9:00AM'), #Sábado
       (10,'9:30AM','10:30AM'), #Sábado
       (11,'11:00AM','12:00PM'); #Sábado

###########################################################################################
#TABLAS DEPENDIENTES

INSERT INTO movimientos
	(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES
(1,'Box Jump', 'BJ','Salto al cajón','N','Base',2,1),
(2,'Bench Press', 'BP','Press de banca','S','Base',3,3),
(3,'Back Squat', 'BS','Sentadilla trasera con peso','S','Base',3,3),
(4,'Burpee', 'BRP','Burpee','N','Base',1,1),
(5,'Clean and Jerk', 'C&J','Cargada y envión','S','Base',3,3),
(6,'Clean', 'CLN','Cargada','S','Base',3,3),
(7,'Hang Clean', 'HC','Cargada colgante','S','Variación',3,3),
(8,'Power Clean', 'PC','Cargada colgante de potencia','S','Variación',3,3),
(9,'Squat Clean', 'SC','Levantando peso desde el piso y hacer un squat a la vez','S','Variación',3,3),
(10,'Chest to Bar', 'CTB','Pecho a la barra','N','Base',1,2),
(11,'Dead lift', 'DL','Dead lift: Peso Muerto','S','Base',3,3),
(12,'Double Unders', 'DU','Dos vueltas de la cuerda en un salto','N','Base',1,1),
(13,'Front Squat', 'FS','Sentadilla frontal con peso','S','Base',3,3),
(14,'Hand Stand Push-Up', 'HSPU','Pino flexión ó Parada de manos con flexión','N','Base',1,2),
(15,'Knees to Elbows', 'K2E','Rodillas a los codos (en la barra)','N','Base',1,2),
(16,'Muscle Up', 'MU','Movimientos combinados que encadenan un balanceo con un fondo de brazos (puede ser en anillas o en barras).','N','Base',1,2),
(17,'Overhead squat', 'OHS','Sentadilla con peso por encima de la cabeza','S','Base',3,3),
(18,'Push Jerk', 'PJ','Empuje con envión','S','Base',3,3),
(19,'Push Press', 'PP','Empuje con fuerza','S','Base',3,3),
(20,'Pull Up', 'PUL','Dominadas','N','Base',1,1),
(21,'Sumo Dead lift High Pull', 'SDHP','Peso muerto en posición de sumo, empujando la barra hasta la altura de la barbilla.','S','Base',3,3),
(22,'Split Jerk', 'SJ','Empuje con tirón o empuje con envión','S','Base',3,3),
(23,'Snatch', 'SN','Arranque','S','Base',3,3),
(24,'Power Snatch', 'PS','Arranque con potencia','S','Variación',3,3),
(25,'Squat Snatch', 'SS','Arranque con sentadilla','S','Variación',3,3),
(26,'Hang Snatch', 'HS','Arranque colgante con sentadilla','S','Variación',3,3),
(27,'Shoulder Press', 'SP','Press de hombros ','S','Base',3,3),
(28,'Squat', 'SQ','Sentadilla','N','Base',1,1),
(29,'Toes to Bar', 'TtB','Pies a la barra','N','Base',1,2),
(30,'Unbroken', 'UB','Es cuando se realiza un ejercicio de principio a fin sin descanso','N','Base',1,1),
(31,'Wall Balls', 'WB','Lanzamiento de bola a la pared','N','Base',1,1),
(32,'Push Up', 'PUS', 'Flexiones', 'N', 'Base', 1, 1),
(33,'Sit Up', 'SU', 'Abdominales', 'N', 'Base', 1, 1),
(34,'Thrusters', 'TH', 'Levantamiento de pesa desde el pecho', 'S', 'Base', 3, 3),
(35,'Single-leg Squat', 'SLSQ','Sentadilla con una sola pierna','N','Variación',1,1),
(36,'Run', 'RN', 'Spint/Correr', 'N', 'Base', 4, 1),
(37,'Kettlebell Swing', 'KS', 'Balanceo de Kettlebell', 'S', 'Base', 1, 2);

##############################################################################################################################

#The Girls
INSERT INTO wod
    (id_wod, nombre, duracion_minutos, rx_masculino, rx_feminino, puntuacion_meta, descanso, descripcion, id_modalidad, id_categoria, id_tipo_puntuacion)
VALUES
    (1, 'Barbara', 15, NULL, NULL, 5, 'Descansos de 1 minuto por ronda', '5 rounds, 3 minutos, descanso', 1, 3, 1),
    (2, 'Chelsea', 30, NULL, NULL, 30, NULL, 'EMOM por 30 minutos', 2, 3, 2),
    (3, 'Mary', 20, NULL, NULL, 20, NULL, 'AMRAP en 20 minutos', 1, 3, 2),
    (4, 'Cindy', 20, NULL, NULL, 20, NULL, 'AMRAP en 20 minutos', 1, 3, 2),
    (5, 'Annie', NULL, NULL, NULL, 300, NULL, '50-40-30-20-10', 4, 3, 3 ),
    (6, 'Nicole', 20, NULL, NULL, 20, NULL, 'AMRAP en 20 minutos', 1, 3, 2),
    (7, 'Angie', NULL, NULL, NULL, 20, NULL, NULL, 6, 3, 2),
    (8, 'Eva', NULL, 70, 50, 5, NULL, '5 rondas', 1, 3, 1),
    (9, 'Helen', NULL, 55, 35, 3, NULL, '3 rondas', 6, 3, 1),
    (10, 'Kelly', NULL, 20, 14, 5, NULL, '5 rondas', 6, 3, 1),
    (11, 'Karen', NULL, 20, 14, 15, NULL, 'AFAP', 6, 3, 2),
    (12, 'Amanda', NULL, 135, 95, 12, NULL, 'AFAP', 6, 3, 2),
    (13, 'Jackie', NULL, 45, 35, 10, NULL, 'AFAP', 6, 3, 2),
    (14, 'Diane', NULL, 225, 155, 10, 'Descansos cortos de 3 a 10 segundos entre rondas', '21-15-9', 3, 3, 2),
    (15, 'Fran', NULL, 95, 65, 7, NULL, '21-15-9', 3, 3, 2),
    (16, 'Elizabeth', NULL, 135, 95, 10, 'Se permiten descansos de varios segundos', '21-15-9', 3, 3, 2),
    (17, 'Nancy', NULL, 95, 65, 5, NULL, '5 rondas', 3, 3, 1),
    (18, 'Lynne', NULL, NULL, NULL, 5, 'Tanto tiempo como sea necesario entre rondas', '5 rondas de repeticiones al máximo', 1, 3, 1),
    (19, 'Isabel', NULL, 135, 95, 6, NULL, 'AFAP', 6, 3, 2),
    (20, 'Linda', NULL, NULL, NULL, 25, NULL, '10-9-8-7-6-5-4-3-2-1', 3, 3, 2),
    (21, 'Grace', NULL, 135, 95, 5, 'Muy poco o nulo descanso entre repeticiones', 'AFAP', 6, 3, 2);

#Propios del gimnasio
INSERT INTO wod 
	(id_wod, nombre, duracion_minutos, rx_masculino, rx_feminino, puntuacion_meta, descanso, descripcion, id_modalidad, id_categoria, id_tipo_puntuacion) 
VALUES 
    (22, 'Horst', 21, 225, 69, 6, 'Canis dingo', 'Adaptive solution-oriented time-frame', 5, 1, 3),
    (23, 'Kristin', 24, 26, 146, 19, 'Coluber constrictor', 'Public-key grid-enabled hierarchy', 1, 1, 3),
    (24, 'Winnah', 19, 30, 61, 16, 'Phoenicopterus ruber', 'Decentralized web-enabled framework', 6, 1, 3),
    (25, 'Marlena', 20, 51, 123, 9, 'Gyps bengalensis', 'Self-enabling intermediate initiative', 4, 1, 1),
    (26, 'Haroun', 15, 27, 152, 20, 'Cercopithecus aethiops', 'Pre-emptive mission-critical Graphic Interface', 6, 1, 2),
    (27, 'Lauraine', 21, 129, 136, 7, 'Oreotragus oreotragus', 'Face to face upward-trending structure', 6, 1, 2),
    (28, 'Yank', 24, 214, 54, 19, 'Streptopelia decipiens', 'Focused heuristic projection', 1, 1, 2),
    (29, 'Stepha', 15, 219, 40, 16, 'Anastomus oscitans', 'Optional cohesive Graphical User Interface', 2, 1, 1),
    (30, 'Marcos', 19, 134, 61, 15, 'Castor canadensis', 'Synergized national secured line', 5, 1, 3),
    (31, 'Nevsa', 30, 84, 52, 10, 'Otocyon megalotis', 'Sharable directional groupware', 6, 1, 3),
    (32, 'Nathalia', 30, 190, 134, 12, 'Laniarius ferrugineus', 'Realigned user-facing database', 4, 1, 3),
    (33, 'Gwenneth', 24, 71, 63, 12, 'Dasypus novemcinctus', 'Decentralized attitude-oriented extranet', 4, 1, 1),
    (34, 'Mathew', 15, 78, 121, 16, 'Naja sp.', 'Quality-focused mobile utilisation', 6, 1, 2),
    (35, 'Talyah', 26, 59, 115, 10, 'Parus atricapillus', 'Persevering zero defect secured line', 3, 1, 2),
    (36, 'Elvina', 26, 130, 33, 20, 'Laniaurius atrococcineus', 'Upgradable non-volatile support', 2, 1, 1),
    (37, 'Lisle', 27, 103, 150, 14, 'Acanthaster planci', 'Automated bottom-line capacity', 5, 1, 2),
    (38, 'Rogerio', 15, 150, 127, 18, 'Branta canadensis', 'Stand-alone heuristic hierarchy', 6, 1, 3),
    (39, 'Nedi', 22, 182, 98, 18, 'Columba palumbus', 'Robust asynchronous superstructure', 6, 1, 1),
    (40, 'Janet', 30, 157, 57, 12, 'Felis pardalis', 'Persevering tertiary installation', 3, 1, 1),
    (41, 'Denys', 17, 65, 39, 17, 'Acridotheres tristis', 'Reverse-engineered optimizing artificial intelligence', 4, 1, 2),
    (42, 'Cirilo', 18, 92, 154, 18, 'Choloepus hoffmani', 'Triple-buffered local leverage', 5, 1, 3);


###############################################################################################################################

#The Girls
INSERT INTO detalle_wod
    (id_wod, id_movimiento, cantidad_reps)
VALUES
    #Barbara
    (1, 20, 20),
    (1, 32, 30),
    (1, 33, 40),
    (1, 28, 50),
    #Chelsea
    (2, 20, 5),
    (2, 32, 10),
    (2, 28, 15),
    #Mary
    (3, 14, 5),
    (3, 35, 10),
    (3, 20, 15),
    #Cindy
    (4, 20, 5),
    (4, 32, 10),
    (4, 28, 15),
    #Annie
    (5, 12, NULL),
    (5, 33, NULL),
    #Nicole
    (6, 36, 400),
    (6, 20, NULL),
    #Angie
    (7, 20, 100),
    (7, 32, 100),
    (7, 33, 100),
    (7, 28, 100),
    #Eva
    (8, 36, 800),
    (8, 37, 30),
    (8, 20, 30),
    #Helen
    (9, 36, 400),
    (9, 37, 21),
    (9, 20, 12),
    #Kelly
    (10, 36, 400),
    (10, 1, 30),
    (10, 31, 30),
    #Karen
    (11, 31, 150),
    #Amanda
    (12, 16, NULL),
    (12, 23, NULL),
    #Jackie
    (13, 36, 1000),
    (13, 34, 50),
    (13, 20, 30),
    #Diane
    (14, 11, NULL),
    (14, 14, NULL),
    #Fran
    (15, 34, NULL),
    (15, 20, NULL),
    #Elizabeth
    (16, 6, NULL),
    (16, 16, NULL),
    #Nancy
    (17, 36, 400),
    (17, 17, 15),
    #Lynne
    (18, 2, NULL),
    (18, 20, NULL),
    #Isabel
    (19, 23, 30),
    #Linda
    (20, 11, NULL),
    (20, 2, NULL),
    (20, 6, NULL),
    #Grace
    (21, 5, 30);

#Wods creados por el gimnasio
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 9, 37);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (28, 10, 50);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (28, 35, 7);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (34, 6, 30);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 14, 9);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 30, 37);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 35, 24);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (38, 15, 7);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (38, 28, 36);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (24, 28, 26);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 16, 36);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (23, 36, 39);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 29, 26);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (35, 8, 13);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (34, 28, 35);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (31, 31, 23);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (36, 36, 42);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (29, 33, 29);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (40, 12, 21);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (35, 35, 30);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (41, 23, 9);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (25, 11, 28);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (28, 16, 37);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 14, 46);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (27, 25, 33);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (38, 26, 39);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 23, 36);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (40, 21, 21);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (22, 36, 35);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (36, 31, 41);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 3, 23);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (22, 13, 17);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (26, 29, 42);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (32, 26, 12);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (40, 10, 27);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (36, 3, 41);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (41, 33, 32);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 12, 12);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (39, 18, 32);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (34, 23, 17);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (31, 35, 8);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (35, 3, 45);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (22, 30, 16);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (42, 27, 17);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (37, 26, 30);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (40, 25, 41);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (33, 6, 23);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (22, 5, 46);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (27, 11, 40);
insert into detalle_wod (id_wod, id_movimiento, cantidad_reps) values (24, 23, 9);

################################################################################################################################
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7501617290123', 'Alfi', 'Tipling', '1992/10/04', '0811 Karstens Park', '94974128', 'atipling0@google.es', 'F', 120, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9830241210222', 'Alvis', 'Fairburne', '1984/10/20', '235 Valley Edge Plaza', '96222759', 'afairburne1@reference.com', 'M', 170, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8796485272222', 'Lorrie', 'Fairhead', '1989/11/07', '99 Anthes Crossing', '88331703', 'lfairhead2@jugem.jp', 'F', 115, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6052751122013', 'Tanney', 'Bickerstaffe', '1991/09/27', '287 Cascade Lane', '69321748', 'tbickerstaffe3@ning.com', 'M', 172, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8485706560202', 'Colas', 'Quickenden', '1993/01/10', '5 Meadow Ridge Street', '98480483', 'cquickenden7@addthis.com', 'M', 155, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7334292970203', 'Vere', 'Slaughter', '1980/05/14', '87 Birchwood Crossing', '99955841', 'vslaughter9@cyberchimps.com', 'F', 168, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8262908402203', 'Mycah', 'Carmont', '1987/12/21', '55 Bultman Court', '99324251', 'mcarmonta@ebay.com', 'M', 177, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8542089321103', 'Susanne', 'Fitzer', '1986/11/27', '4 Ridgeview Court', '88192597', 'sfitzerb@facebook.com', 'F', 125, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9457378362113', 'Rowan', 'Capaldo', '1992/07/11', '651 Grayhawk Crossing', '99350405', 'rcapaldoc@xing.com', 'M', 165, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8767631282023', 'Karlik', 'Cooksley', '1991/07/30', '9628 Packers Plaza', '99261954', 'kcooksleyd@goodreads.com', 'M', 172, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('3669658330202', 'Tiffani', 'Hefferan', '1978/10/28', '2 Hansons Junction', '67299255', 'thefferan0@dailymail.co.uk', 'F', 171, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8452434922102', 'Dela', 'Doone', '1993/11/24', '079 Duke Park', '98465021', 'ddoone1@usnews.com', 'F', 124, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9570004530123', 'Merrick', 'Jimeno', '1979/12/16', '1 Toban Crossing', '96512296', 'mjimeno2@soup.io', 'M', 143, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9044711110212', 'Zed', 'Flack', '1982/01/07', '8 Green Junction', '87150706', 'zflack3@csmonitor.com', 'M', 146, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6971989940103', 'Olly', 'Dearing', '1979/08/26', '2 Hoard Plaza', '87718338', 'odearing4@miibeian.gov.cn', 'F', 129, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4119002041212', 'Field', 'Rubica', '1978/08/31', '5051 Veith Junction', '79796166', 'frubica5@scribd.com', 'M', 198, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9055965592213', 'Randell', 'Cheasman', '1998/12/24', '390 Anniversary Avenue', '88312618', 'rcheasman6@last.fm', 'M', 120, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7266934750223', 'Kath', 'Sawl', '1990/03/29', '82 Monica Street', '88411174', 'ksawl7@sun.com', 'F', 107, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9132262182123', 'Calla', 'Caller', '1976/10/01', '3 Fremont Circle', '69804419', 'ccaller8@sun.com', 'F', 126, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9526938480113', 'Nolie', 'Adolfson', '1997/07/20', '35 Marcy Parkway', '98508423', 'nadolfson9@meetup.com', 'F', 203, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8115482820110', 'Earl', 'Barkas', '1986/11/19', '517 Cascade Park', '99312554', 'ebarkasa@parallels.com', 'M', 154, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8791060622122', 'Emilio', 'Rapley', '1983/11/30', '5257 Stuart Plaza', '86384719', 'erapleyb@tumblr.com', 'M', 108, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8221086931023', 'Bron', 'Proudlove', '1993/07/12', '6 Kedzie Drive', '96750506', 'bproudlovec@businesswire.com', 'M', 138, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6786142092223', 'Shannon', 'Challes', '1978/03/11', '99 Dakota Avenue', '99193672', 'schallesd@addtoany.com', 'F', 180, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9199118462023', 'Hoebart', 'McCook', '1986/11/04', '44 Katie Junction', '89873418', 'hmccooke@hc360.com', 'M', 101, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9956216282222', 'Sigrid', 'Porrett', '1986/11/29', '4 Memorial Way', '98095563', 'sporrettf@google.cn', 'F', 130, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8226304770221', 'Perceval', 'Stihl', '1999/03/30', '84 Roth Terrace', '95293429', 'pstihlg@biglobe.ne.jp', 'M', 197, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7077125932123', 'Bengt', 'Andreotti', '1982/04/18', '125 Farmco Street', '99985931', 'bandreottih@pinterest.com', 'M', 190, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8626524740213', 'Niki', 'Mearns', '1976/10/15', '53 Pine View Center', '89163219', 'nmearnsi@youku.com', 'M', 170, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9806091372223', 'Victoir', 'McDermott', '1987/06/12', '61415 Birchwood Park', '98775408', 'vmcdermottj@networksolutions.com', 'M', 111, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9646407860213', 'Maryann', 'Cochern', '1988/09/10', '82292 Grim Park', '77614207', 'mcochernk@prweb.com', 'F', 191, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6415180661111', 'Martita', 'Rosenboim', '1976/03/16', '913 Magdeline Street', '99076163', 'mrosenboiml@nydailynews.com', 'F', 173, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9337806330213', 'Kurtis', 'Newlin', '1991/02/08', '319 Dorton Avenue', '89744692', 'knewlinm@booking.com', 'M', 163, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9544181592123', 'Costanza', 'Emmerson', '2001/09/23', '867 Hagan Pass', '79023148', 'cemmersonn@unc.edu', 'F', 125, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8661815922221', 'Louisette', 'Aldin', '2000/04/27', '99730 3rd Alley', '88619254', 'laldino@cocolog-nifty.com', 'F', 145, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9078790492203', 'Glori', 'Salway', '1990/12/10', '5 Crownhardt Point', '79939794', 'gsalwayp@discuz.net', 'F', 187, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9751925631020', 'Arnie', 'Strutz', '1985/10/27', '31 Butternut Terrace', '89883846', 'astrutzq@vk.com', 'M', 117, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4355116870223', 'Even', 'Gladdor', '1998/11/23', '3 Manufacturers Trail', '99911264', 'egladdorr@berkeley.edu', 'M', 206, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9227586672023', 'Joseph', 'Guirardin', '1989/05/05', '72735 Oak Drive', '59433211', 'jguirardins@theguardian.com', 'M', 176, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7465066732023', 'Vita', 'Yurkiewicz', '1996/10/28', '77304 Miller Plaza', '87088827', 'vyurkiewiczt@clickbank.net', 'F', 197, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8692167711123', 'Richardo', 'Batthew', '1976/08/20', '80 Clove Drive', '99774568', 'rbatthewu@skyrock.com', 'M', 165, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9651682770022', 'Mort', 'Linck', '1989/06/10', '8 Prentice Pass', '49737970', 'mlinckv@timesonline.co.uk', 'M', 198, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9676860882000', 'Leena', 'McNeish', '1985/01/16', '05186 Melrose Crossing', '79422386', 'lmcneishw@icq.com', 'F', 207, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9563520020122', 'Melessa', 'McEntegart', '1979/06/11', '37198 Wayridge Alley', '78999240', 'mmcentegartx@omniture.com', 'F', 101, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9541115331200', 'Lacey', 'Brockington', '1998/06/07', '53 Esch Point', '99249479', 'lbrockingtony@ebay.co.uk', 'F', 158, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7939775692123', 'Arman', 'Canon', '1998/03/24', '04718 Paget Terrace', '97355317', 'acanonz@senate.gov', 'M', 132, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9559622090223', 'Graham', 'Gawthrop', '1988/07/24', '37 Dayton Terrace', '99905885', 'ggawthrop10@accuweather.com', 'M', 180, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9467022142001', 'Manfred', 'Grob', '1999/09/28', '16 American Way', '99626684', 'mgrob11@smugmug.com', 'M', 194, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9603305861113', 'Ashil', 'MacCarlich', '1995/11/29', '04 John Wall Way', '59805914', 'amaccarlich12@unc.edu', 'F', 114, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9438298670223', 'Monte', 'Boumphrey', '1996/02/21', '60 Boyd Court', '56493185', 'mboumphrey13@blogs.com', 'M', 151, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7284235770021', 'Deana', 'Frankel', '1994/04/11', '92926 Burrows Point', '79040794', 'dfrankel14@bizjournals.com', 'F', 140, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9618322402123', 'Cathie', 'Flipek', '1988/04/18', '11 Waubesa Drive', '98376941', 'cflipek15@w3.org', 'F', 147, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9869524461202', 'Octavius', 'Papen', '1983/07/25', '0 Thackeray Avenue', '99214673', 'opapen16@sogou.com', 'M', 103, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9222499962121', 'Berti', 'Denne', '2000/06/02', '8247 Lotheville Court', '99127919', 'bdenne17@4shared.com', 'M', 143, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9688940852111', 'Lenard', 'MacCafferty', '1981/06/09', '65407 Alpine Street', '89545472', 'lmaccafferty18@forbes.com', 'M', 208, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9723743210023', 'Kore', 'Netti', '1977/08/21', '401 Northview Alley', '88426246', 'knetti19@blog.com', 'F', 149, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9186864262203', 'Munmro', 'Weippert', '1981/05/29', '0773 Golf View Park', '69612994', 'mweippert1a@yolasite.com', 'M', 152, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6071475412222', 'Rhoda', 'Isham', '1993/04/14', '037 Hanover Pass', '78518599', 'risham1b@slate.com', 'F', 142, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8897236322120', 'Jacquenetta', 'Boocock', '1979/11/21', '801 Grover Crossing', '63264949', 'jboocock1c@netscape.com', 'F', 166, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8893306841203', 'Constantino', 'Brehaut', '1988/08/21', '301 Ryan Pass', '79114734', 'cbrehaut1d@hostgator.com', 'M', 187, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9779331030221', 'Agnese', 'Brownsea', '1980/07/15', '8 Westridge Plaza', '78147369', 'abrownsea1e@icq.com', 'F', 143, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7703126270223', 'Pincus', 'Sked', '1975/07/16', '3 High Crossing Plaza', '98183280', 'psked1f@list-manage.com', 'M', 117, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9139446712212', 'Dacia', 'Sharkey', '1987/05/08', '81079 Independence Trail', '99579506', 'dsharkey1g@reddit.com', 'F', 119, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8861127572223', 'Keely', 'Imlacke', '1999/06/01', '9 Namekagon Park', '89629983', 'kimlacke1h@live.com', 'F', 124, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7830588762103', 'Gretchen', 'Cannon', '1997/06/17', '9 Erie Alley', '99906676', 'gcannon1i@sciencedaily.com', 'F', 190, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9088943782010', 'Sibyl', 'Hensmans', '1994/01/25', '2983 Golf Point', '76786942', 'shensmans1j@soundcloud.com', 'F', 128, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9130823081102', 'Fraze', 'Naptine', '1996/07/16', '32 Gerald Street', '98854624', 'fnaptine1k@miibeian.gov.cn', 'M', 107, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7058871452211', 'Kyle', 'Chooter', '1991/02/28', '0 Waxwing Crossing', '99740179', 'kchooter1l@hugedomains.com', 'M', 206, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9073728351010', 'Aubrey', 'Andrewartha', '1983/03/25', '5095 Tomscot Way', '59926634', 'aandrewartha1m@cyberchimps.com', 'F', 189, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('5377856371120', 'Aurelie', 'Ord', '1977/02/01', '1 Golf View Circle', '74099450', 'aord1n@skyrock.com', 'F', 156, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9312802320222', 'Elnar', 'Colebourn', '1984/05/07', '95027 Dottie Junction', '88886345', 'ecolebourn1o@webs.com', 'M', 164, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9920562272200', 'Flss', 'Raynard', '1979/03/11', '32 Dovetail Parkway', '99710270', 'fraynard1p@nationalgeographic.com', 'F', 150, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6295733661223', 'Royall', 'Ray', '1981/11/05', '127 Cardinal Center', '98458911', 'rray1q@nyu.edu', 'M', 205, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8547597012222', 'Olimpia', 'Gurry', '1999/07/09', '863 Laurel Drive', '96060107', 'ogurry1r@ca.gov', 'F', 102, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7382755712103', 'Carolan', 'Pinchin', '2000/04/18', '86603 Moose Trail', '99815909', 'cpinchin1s@kickstarter.com', 'F', 134, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9922839831010', 'Regine', 'Halversen', '1991/01/29', '93 Kensington Way', '98717958', 'rhalversen1t@tmall.com', 'F', 160, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8321640930212', 'Sofia', 'Singyard', '1987/10/06', '9966 5th Parkway', '99140014', 'ssingyard1u@sciencedaily.com', 'F', 168, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8750319912203', 'Jessey', 'Hodjetts', '1978/07/11', '95 Killdeer Crossing', '97027125', 'jhodjetts1v@accuweather.com', 'M', 100, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8224787862202', 'Rubie', 'MacBarron', '1994/05/26', '046 Declaration Way', '89017558', 'rmacbarron1w@state.gov', 'F', 157, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9679915730001', 'Robbert', 'Baudino', '1985/07/26', '68 Troy Crossing', '96030710', 'rbaudino1x@creativecommons.org', 'M', 203, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9965958531122', 'Valle', 'Tall', '1996/08/13', '3 Jenifer Point', '86395485', 'vtall1y@accuweather.com', 'M', 188, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9557517452223', 'Dina', 'Garnall', '1984/07/09', '21 Sunnyside Place', '89161109', 'dgarnall1z@mit.edu', 'F', 139, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7484662472223', 'Desi', 'Spiaggia', '2001/02/21', '6 Dapin Terrace', '99510171', 'dspiaggia20@toplist.cz', 'M', 195, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9556965740012', 'Waylin', 'Flewan', '1999/03/09', '0 Melby Circle', '89374123', 'wflewan21@phoca.cz', 'M', 145, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9318279430100', 'Hyacinthia', 'Skahill', '1985/05/03', '8 Straubel Center', '79858291', 'hskahill22@quantcast.com', 'F', 177, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6214670632223', 'Rozanna', 'Jeays', '1991/12/09', '111 Manitowish Avenue', '59012982', 'rjeays23@theatlantic.com', 'F', 148, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6524775062220', 'Benedetto', 'Drance', '2000/03/18', '44 Surrey Terrace', '79985686', 'bdrance24@example.com', 'M', 142, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8799567542013', 'Brant', 'Doogue', '1977/08/17', '78351 Sugar Street', '99801477', 'bdoogue25@stanford.edu', 'M', 193, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9092554091013', 'Chadd', 'Theaker', '1993/03/30', '764 Hooker Plaza', '87183996', 'ctheaker26@g.co', 'M', 150, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7780358472123', 'Myrtie', 'Jacquemard', '1992/01/28', '67 Scott Drive', '89426509', 'mjacquemard27@japanpost.jp', 'F', 186, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4455579690210', 'Edee', 'Isac', '1984/06/13', '4 Burning Wood Way', '79126929', 'eisac28@diigo.com', 'F', 162, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8153268261223', 'Sigismundo', 'Mathews', '1987/06/30', '43 Muir Hill', '88312248', 'smathews29@cnbc.com', 'M', 130, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7726291570211', 'Dede', 'Cortin', '1981/08/19', '972 Sherman Circle', '97157228', 'dcortin2a@google.co.uk', 'F', 138, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9795034562013', 'Octavia', 'Landrean', '1991/07/11', '8 Brickson Park Plaza', '98768646', 'olandrean2b@mapy.cz', 'F', 183, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9259920190223', 'Ulrick', 'Perett', '2000/01/17', '28124 Little Fleur Plaza', '97054088', 'uperett2c@auda.org.au', 'M', 107, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8916991870200', 'Ailey', 'Foley', '1995/05/01', '27804 Sheridan Hill', '84828792', 'afoley2d@scribd.com', 'F', 172, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9032290801220', 'Janeta', 'Rao', '1997/02/17', '0 Vidon Plaza', '99673848', 'jrao2e@google.co.uk', 'F', 200, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8572583082111', 'Bobette', 'Doni', '1979/10/22', '07725 Esch Pass', '79901067', 'bdoni2f@blogtalkradio.com', 'F', 177, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8160967652200', 'Parrnell', 'Sofe', '1999/01/16', '4435 Southridge Alley', '98394412', 'psofe2g@hhs.gov', 'M', 159, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9923343152003', 'Rabi', 'Cully', '1985/08/16', '9 Bowman Pass', '99570677', 'rcully2h@icq.com', 'M', 199, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9628641572023', 'Delora', 'McNirlin', '1980/08/27', '54207 Beilfuss Pass', '99057498', 'dmcnirlin2i@homestead.com', 'F', 195, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9224684082212', 'Libbey', 'MacIver', '1984/04/20', '92 Blue Bill Park Street', '85894842', 'lmaciver2j@sciencedirect.com', 'F', 128, 1, 1);

#################################################################################################################
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 25, 70);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 10, 13);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 31, 96);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 18, 73);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 25, 40);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 4, 38);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 6, 70);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 32, 66);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 27, 14);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 5, 35);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 33, 45);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 29, 85);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 34, 39);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 27, 43);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 10, 90);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 22, 87);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 11, 99);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 37, 79);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 4, 59);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 1, 35);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 5, 23);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 23, 29);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 20, 71);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 15, 69);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 22, 53);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 23, 25);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 4, 14);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 37, 35);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 26, 55);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 27, 75);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 10, 81);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 6, 40);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 26, 10);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 24, 56);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 29, 49);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 36, 13);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 26, 77);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 31, 86);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 25, 56);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 19, 30);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 20, 45);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 8, 29);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 12, 11);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 5, 29);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 31, 73);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (3, 33, 86);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 10, 55);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (1, 19, 80);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (2, 7, 93);
insert into detalle_especialidad (id_especialidad, id_movimiento, cantidad_reps) values (4, 34, 17);


COMMIT;




