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
VALUES (1, 'AMRAP', 'As Meny Rounds As Possible.Rondas de un grupo de ejercicios que se puedan completar durante un tiempo establecido');
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

INSERT INTO unidad_medida(id_u_medida, nombre) VALUES(1, 'Cantidad Repeticiones');
INSERT INTO unidad_medida(id_u_medida, nombre) VALUES(2, 'Altura');
INSERT INTO unidad_medida(id_u_medida, nombre) VALUES(3, 'Peso');

INSERT INTO tipo_persona(id_tipo_persona, nombre_tipo) VALUES(1, 'Atleta');
INSERT INTO tipo_persona(id_tipo_persona, nombre_tipo) VALUES(2, 'Entrenador');

INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(1,'5:00AM','6:00AM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(2,'6:00AM','7:00AM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(3,'7:00AM','8:00AM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(4,'12:00PM','1:00PM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(5,'4:30PM','5:30PM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(6,'5:30PM','6:30PM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(7,'6:30PM','7:30PM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(8,'5:00AM','6:00AM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(9,'8:00AM','9:30AM');
INSERT INTO horario(id_horario, hora_inicio, hora_fin) VALUES(10,'9:30AM','11:00AM');

###########################################################################################
#TABLAS DEPENDIENTES

INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(1,'Box Jump', 'BJ','Salto al cajón','N','Base',2,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(2,'Bench Press', 'BP','Press de banca','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(3,'Back Squat', 'BS','Sentadilla trasera con peso','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(4,'Burpee', 'BRP','Burpee','N','Base',1,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(5,'Clean and Jerk', 'C&J','Cargada y envión','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(6,'Clean', 'CLN','Cargada','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(7,'Hang Clean', 'HC','Cargada colgante','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(8,'Power Clean', 'PC','Cargada colgante de potencia','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(9,'Squat Clean', 'SC','Levantando peso desde el piso y hacer un squat a la vez','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(10,'Chest to Bar', 'CTB','Pecho a la barra','N','Base',1,2);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(11,'Dead lift', 'DL','Dead lift: Peso Muerto','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(12,'Double Unders', 'DU','Dos vueltas de la cuerda en un salto','N','Base',1,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(13,'Front Squat', 'FS','Sentadilla frontal con peso','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(14,'Hand Stand Push-Up', 'HSPU','Pino flexión ó Parada de manos con flexión','N','Base',1,2);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(15,'Knees to Elbows', 'K2E','Rodillas a los codos (en la barra)','N','Base',1,2);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(16,'Muscle Up', 'MU','Movimientos combinados que encadenan un balanceo con un fondo de brazos (puede ser en anillas o en barras).','N','Base',1,2);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(17,'Overhead squat', 'OHS','Sentadilla con peso por encima de la cabeza','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(18,'Push Jerk', 'PJ','Empuje con envión','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(19,'Push Press', 'PP','Empuje con fuerza','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(20,'Pull Up or Push Up', 'PU','Dominadas o flexiones','N','Base',1,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(21,'Sumo Dead lift High Pull', 'SDHP','Peso muerto en posición de sumo, empujando la barra hasta la altura de la barbilla.','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(22,'Split Jerk', 'SJ','Empuje con tirón o empuje con envión','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(23,'Snatch', 'SN','Arranque','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(24,'Power Snatch', 'PS','Arranque con potencia','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(25,'Squat Snatch', 'SS','Arranque con sentadilla','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(26,'Hang Snatch', 'HS','Arranque colgante con sentadilla','S','Variación',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(27,'Shoulder Press', 'SP','Press de hombros ','S','Base',3,3);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(28,'Squat', 'SQ','Sentadilla','N','Base',1,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(29,'Toes to Bar', 'TtB','Pies a la barra','N','Base',1,2);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(30,'Unbroken', 'UB','Es cuando se realiza un ejercicio de principio a fin sin descanso','N','Base',1,1);
INSERT INTO movimientos(id_movimiento, nombre, nombre_corto, descripcion, permite_pr, tipo_ejercicio, id_u_medida, id_area_mov)
VALUES(31,'Wall Balls', 'WB','Lanzamiento de bola a la pared','N','Base',1,1);

################################################################################################################################

insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7501617290123', 'Alfi', 'Tipling', '04/10/1992', '0811 Karstens Park', '94974128', 'atipling0@google.es', 'F', 120, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9830241210222', 'Alvis', 'Fairburne', '20/10/1984', '235 Valley Edge Plaza', '96222759', 'afairburne1@reference.com', 'M', 170, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8796485272222', 'Lorrie', 'Fairhead', '07/11/2000', '99 Anthes Crossing', '88331703', 'lfairhead2@jugem.jp', 'F', 115, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6052751122013', 'Tanney', 'Bickerstaffe', '27/09/1997', '287 Cascade Lane', '69321748', 'tbickerstaffe3@ning.com', 'M', 172, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9992827592223', 'Tiphany', 'Cossem', '07/04/1988', '9666 Mcbride Lane', '98420177', 'tcossem4@artisteer.com', 'F', 122, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9092344841221', 'Ashlie', 'Emanuel', '23/06/1980', '8905 School Alley', '99316487', 'aemanuel5@nature.com', 'F', 199, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9018354852220', 'Nikaniki', 'Stanman', '12/11/1993', '7162 Sachtjen Way', '99158003', 'nstanman6@icio.us', 'F', 156, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8485706560202', 'Colas', 'Quickenden', '10/01/1998', '5 Meadow Ridge Street', '98480483', 'cquickenden7@addthis.com', 'M', 155, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8894451270013', 'Enrico', 'Ostler', '25/06/1977', '71303 Bunting Junction', '99024872', 'eostler8@wufoo.com', 'M', 182, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7334292970203', 'Vere', 'Slaughter', '14/05/1975', '87 Birchwood Crossing', '99955841', 'vslaughter9@cyberchimps.com', 'F', 168, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8262908402203', 'Mycah', 'Carmont', '24/12/1987', '55 Bultman Court', '99324251', 'mcarmonta@ebay.com', 'M', 177, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8542089321103', 'Susanne', 'Fitzer', '27/11/1979', '4 Ridgeview Court', '88192597', 'sfitzerb@facebook.com', 'F', 125, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9457378362113', 'Rowan', 'Capaldo', '11/07/1997', '651 Grayhawk Crossing', '99350405', 'rcapaldoc@xing.com', 'M', 165, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8767631282023', 'Karlik', 'Cooksley', '30/07/1991', '9628 Packers Plaza', '99261954', 'kcooksleyd@goodreads.com', 'M', 172, 1, 2);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6560861342013', 'Huberto', 'Limer', '01/04/1980', '94 Rusk Junction', '89962648', 'hlimere@sphinn.com', 'M', 171, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9216024262223', 'Geordie', 'Brogden', '16/02/1981', '3633 Hanover Terrace', '55393667', 'gbrogdenf@abc.net.au', 'M', 156, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9122506730212', 'Clerissa', 'Ludford', '25/05/1986', '68415 Heffernan Point', '77082678', 'cludfordg@bravesites.com', 'F', 182, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9863350110221', 'Dalila', 'Samett', '23/06/2001', '9468 Dorton Park', '79952911', 'dsametth@blogtalkradio.com', 'F', 190, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8208144300023', 'Dixie', 'Yegorovnin', '18/09/1983', '8383 Reinke Circle', '98328283', 'dyegorovnini@shop-pro.jp', 'F', 162, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8492634142223', 'Kearney', 'Cator', '02/09/1978', '81444 Miller Junction', '97788015', 'kcatorj@amazon.co.jp', 'M', 187, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7584048782121', 'Patsy', 'Glanfield', '21/06/1990', '113 Red Cloud Drive', '85177655', 'pglanfieldk@jiathis.com', 'F', 151, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9461738542223', 'Kizzee', 'Stitson', '07/07/1991', '9879 Spohn Crossing', '88624899', 'kstitsonl@ed.gov', 'F', 137, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6728899072112', 'Reinhard', 'Huegett', '12/08/2001', '48 High Crossing Hill', '67809199', 'rhuegettm@bloomberg.com', 'M', 181, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8434601901123', 'Isidro', 'Burtwell', '11/12/1984', '0 Hooker Drive', '78884884', 'iburtwelln@eepurl.com', 'M', 183, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7415911112223', 'Carleton', 'McCracken', '23/04/1993', '64 Kingsford Plaza', '79496988', 'cmccrackeno@hud.gov', 'M', 147, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7631347720123', 'Amye', 'Gisburne', '13/09/1988', '8325 Rusk Street', '99674773', 'agisburnep@ovh.net', 'F', 166, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9860608972103', 'Blaine', 'Kenlin', '06/09/1990', '6 Heffernan Street', '69063534', 'bkenlinq@creativecommons.org', 'M', 110, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9706505782221', 'Margi', 'Marquis', '06/07/1976', '9481 Crescent Oaks Junction', '92620735', 'mmarquisr@163.com', 'F', 184, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8790681752010', 'Wilmar', 'Groucock', '15/01/1991', '1218 8th Circle', '89848995', 'wgroucocks@phoca.cz', 'M', 141, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7782539530202', 'Herbert', 'Seppey', '01/04/1992', '9 Union Crossing', '89625540', 'hseppeyt@xrea.com', 'M', 191, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8048722662103', 'Gregor', 'Oakwell', '18/03/1983', '30 Hauk Alley', '99347325', 'goakwellu@sun.com', 'M', 145, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8464235822203', 'Monti', 'Moorey', '26/12/1983', '89686 Del Sol Trail', '96878717', 'mmooreyv@nsw.gov.au', 'M', 182, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9025684210123', 'Flory', 'Winsper', '15/12/2000', '5 Atwood Circle', '98870400', 'fwinsperw@tmall.com', 'M', 169, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9656767931223', 'Ainslie', 'Girth', '27/07/1988', '98 Arrowood Center', '79390825', 'agirthx@hhs.gov', 'F', 188, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('5211494710013', 'Kasey', 'Brute', '12/05/1999', '07 Sunfield Lane', '95392548', 'kbrutey@dagondesign.com', 'F', 201, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8564923010220', 'Mattheus', 'Tireman', '28/09/1997', '770 John Wall Alley', '99167556', 'mtiremanz@businesswire.com', 'M', 104, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7685924780220', 'Vera', 'Perelli', '16/10/1984', '73 Calypso Lane', '98383395', 'vperelli10@seesaa.net', 'F', 136, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8695135331122', 'Fabe', 'Treffrey', '24/11/1999', '13 Spaight Drive', '99849354', 'ftreffrey11@jiathis.com', 'M', 174, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7135891650123', 'Archer', 'Glazier', '01/11/1995', '14329 Melrose Alley', '98456878', 'aglazier12@pagesperso-orange.fr', 'M', 139, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9221588472123', 'Carol', 'Peatt', '26/05/1981', '3965 Lillian Street', '99474871', 'cpeatt13@vimeo.com', 'F', 149, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9322208500102', 'Daniele', 'Halbert', '24/10/1985', '8 Raven Road', '87662198', 'dhalbert14@vk.com', 'F', 162, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4295214232210', 'Magnum', 'Jeayes', '23/09/1994', '1 School Point', '78137223', 'mjeayes15@bing.com', 'M', 204, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9621808840223', 'Rafe', 'Pedrollo', '16/04/1989', '47980 Debra Circle', '87890389', 'rpedrollo16@forbes.com', 'M', 162, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8258552782223', 'Irwin', 'Thaim', '09/12/1988', '25075 Briar Crest Road', '99175562', 'ithaim17@merriam-webster.com', 'M', 139, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9212246791212', 'Erny', 'Sumnall', '07/08/1993', '472 Summer Ridge Hill', '86450505', 'esumnall18@themeforest.net', 'M', 172, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7835447941013', 'Basil', 'Budgen', '01/04/1992', '5 Harper Junction', '77169762', 'bbudgen19@wp.com', 'M', 106, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9351588682212', 'Diane', 'Ondrousek', '18/11/1989', '23 Crest Line Lane', '97989670', 'dondrousek1a@boston.com', 'F', 203, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9689532560001', 'Fanni', 'Leece', '16/11/1981', '424 Dunning Plaza', '76318146', 'fleece1b@myspace.com', 'F', 127, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9550707941022', 'Fleming', 'Lemery', '04/12/1997', '1 Stephen Drive', '89522373', 'flemery1c@ifeng.com', 'M', 110, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('3311483901223', 'Pepito', 'Wynch', '27/01/1982', '86532 Merchant Alley', '97237746', 'pwynch1d@exblog.jp', 'M', 169, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7359841332223', 'Timothee', 'Coulling', '13/10/1997', '759 Walton Way', '99986334', 'tcoulling1e@webeden.co.uk', 'M', 204, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9571977292223', 'Ricky', 'Bark', '17/12/1998', '8886 Gulseth Crossing', '98645349', 'rbark1f@wiley.com', 'M', 117, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8727653710000', 'Tilly', 'Sieve', '20/01/1997', '40370 Reinke Point', '99408206', 'tsieve1g@imdb.com', 'F', 195, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9110644182221', 'Brynna', 'Chancellor', '11/05/1980', '48752 Merchant Street', '78915762', 'bchancellor1h@mysql.com', 'F', 193, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9622700210203', 'Bernelle', 'Adamovicz', '05/01/2000', '02020 Katie Lane', '89165094', 'badamovicz1i@abc.net.au', 'F', 161, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('5578365280202', 'Bunny', 'Laugherane', '02/04/1986', '07 Hayes Road', '98260539', 'blaugherane1j@nbcnews.com', 'F', 177, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('5509703560121', 'Harlen', 'Bradneck', '13/02/1984', '183 Manufacturers Terrace', '88411639', 'hbradneck1k@engadget.com', 'M', 206, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8243191592123', 'Brice', 'MacNeish', '10/02/1991', '84 Florence Court', '98463728', 'bmacneish1l@usa.gov', 'M', 122, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9439676961202', 'Clareta', 'Pidduck', '06/05/1982', '92 Vahlen Parkway', '98119491', 'cpidduck1m@samsung.com', 'F', 100, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9609567411223', 'Cchaddie', 'Giroldi', '29/11/1977', '7660 Declaration Drive', '99448800', 'cgiroldi1n@cornell.edu', 'M', 141, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('5844689360113', 'Falito', 'Livezey', '18/01/1977', '94 Di Loreto Center', '99862062', 'flivezey1o@springer.com', 'M', 193, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('3748823251023', 'Lolly', 'Bunce', '07/08/1992', '7 Warbler Place', '77822723', 'lbunce1p@ed.gov', 'F', 119, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7265760080022', 'Sal', 'Hurdwell', '26/11/1998', '950 Vidon Court', '95594609', 'shurdwell1q@cbc.ca', 'F', 110, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9965189822122', 'Kaitlyn', 'Laffoley-Lane', '29/07/1975', '502 Vera Terrace', '86096988', 'klaffoleylane1r@ox.ac.uk', 'F', 133, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8453944322203', 'Westleigh', 'La Grange', '19/09/1987', '38 Maple Wood Lane', '99017202', 'wlagrange1s@ucoz.com', 'M', 175, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8602664552223', 'Brianne', 'De Blase', '11/01/1977', '28 Knutson Circle', '99719683', 'bdeblase1t@yahoo.co.jp', 'F', 104, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8807758782211', 'Conchita', 'Rogers', '31/08/1982', '5661 Sunfield Alley', '97083173', 'crogers1u@g.co', 'F', 210, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9260499651023', 'Domingo', 'Vecard', '18/11/1987', '119 Leroy Lane', '39112564', 'dvecard1v@cloudflare.com', 'M', 110, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4392727361223', 'Chariot', 'Fancy', '30/04/1991', '861 Goodland Street', '79110307', 'cfancy1w@skype.com', 'M', 172, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7456517360210', 'Alexine', 'Blacker', '10/03/1998', '053 Calypso Trail', '97798332', 'ablacker1x@china.com.cn', 'F', 121, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7872188662220', 'Lanie', 'Dudek', '18/06/1993', '24 Schiller Trail', '98626227', 'ldudek1y@state.gov', 'M', 189, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7101779410222', 'Sharia', 'Dwyr', '20/02/1993', '32 Trailsway Drive', '88381268', 'sdwyr1z@rediff.com', 'F', 166, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6071604952223', 'Allistir', 'Lakeland', '26/06/1981', '37 Helena Street', '69578400', 'alakeland20@posterous.com', 'M', 115, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9983719602013', 'Simonette', 'D''Alesio', '22/10/1977', '0 Browning Terrace', '99513395', 'sdalesio21@wikimedia.org', 'F', 159, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9834446890223', 'Jerrilyn', 'Stronge', '22/07/1990', '6219 Heffernan Terrace', '87299800', 'jstronge22@netscape.com', 'F', 116, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8321893370103', 'Rik', 'Fairney', '02/03/1986', '6069 Riverside Avenue', '79273993', 'rfairney23@mapy.cz', 'M', 107, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7285327762202', 'Loy', 'Dominelli', '12/02/1993', '9993 Lakeland Road', '79523246', 'ldominelli24@cpanel.net', 'M', 146, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9497341120013', 'Zitella', 'Ledwidge', '18/07/1986', '8 Menomonie Street', '97353481', 'zledwidge25@squarespace.com', 'F', 157, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8762019802223', 'Abel', 'Barstowk', '11/07/1980', '9 Blue Bill Park Crossing', '97486034', 'abarstowk26@slashdot.org', 'M', 161, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8655971510023', 'Antoine', 'Tatam', '03/12/1994', '137 Tomscot Park', '89303365', 'atatam27@google.com.br', 'M', 173, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('4496749142203', 'Riobard', 'Mignot', '20/11/1985', '127 Arkansas Alley', '97854546', 'rmignot28@ca.gov', 'M', 158, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8531433122201', 'Margarethe', 'Grundle', '04/09/1991', '3745 New Castle Park', '98322018', 'mgrundle29@shareasale.com', 'F', 156, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9341024902103', 'Gabbey', 'Farran', '26/10/1995', '70 Heath Plaza', '99879103', 'gfarran2a@nyu.edu', 'F', 169, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8657467262023', 'Katrina', 'Bettesworth', '14/11/1994', '0 Hoepker Avenue', '99909772', 'kbettesworth2b@de.vu', 'F', 168, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9958137502223', 'Moses', 'Wodeland', '26/10/1981', '665 Havey Center', '68061369', 'mwodeland2c@hud.gov', 'M', 164, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9842056652200', 'Ruby', 'Sexti', '16/12/1989', '48 Springview Court', '89063716', 'rsexti2d@irs.gov', 'F', 184, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9223855151222', 'Hamil', 'McTeggart', '23/08/1993', '84974 Wayridge Trail', '79432618', 'hmcteggart2e@etsy.com', 'M', 116, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8436457752023', 'Wye', 'Jeacock', '14/10/1984', '3584 Glendale Terrace', '99038984', 'wjeacock2f@bloglines.com', 'M', 150, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8210555441211', 'Biddy', 'Metson', '09/01/1976', '00 Oneill Crossing', '99299936', 'bmetson2g@plala.or.jp', 'F', 207, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7937750220013', 'Jorry', 'Liebmann', '06/09/1996', '90 Dawn Point', '78820871', 'jliebmann2h@google.fr', 'F', 184, 0, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8381248292202', 'Rod', 'Bownas', '26/01/1981', '8326 Service Crossing', '88236492', 'rbownas2i@parallels.com', 'M', 191, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('6519217642223', 'Juli', 'Haggish', '04/08/1984', '8 Roth Hill', '89780795', 'jhaggish2j@wix.com', 'F', 146, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7550627202203', 'Dan', 'Dielhenn', '17/05/2001', '1603 Westend Street', '97924847', 'ddielhenn2k@csmonitor.com', 'M', 183, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9289868781223', 'Penn', 'Dimont', '25/02/1984', '0 Michigan Avenue', '99504277', 'pdimont2l@last.fm', 'M', 175, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8920022892223', 'Isa', 'Girardy', '20/09/1976', '79062 Oakridge Pass', '88908863', 'igirardy2m@over-blog.com', 'F', 124, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9754542850223', 'Chicky', 'Mennell', '25/07/1988', '7536 Dennis Plaza', '97780613', 'cmennell2n@cocolog-nifty.com', 'M', 198, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('7413951602101', 'Maynord', 'Vennart', '26/07/1986', '8905 Kedzie Point', '97076616', 'mvennart2o@redcross.org', 'M', 209, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9343838432210', 'Charo', 'Abilowitz', '01/01/1983', '35 Lunder Hill', '56639535', 'cabilowitz2p@phpbb.com', 'F', 181, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('8310872220120', 'Meryl', 'Moncrieffe', '26/05/1991', '89 Sommers Junction', '95923637', 'mmoncrieffe2q@is.gd', 'M', 170, 1, 1);
insert into personas (dpi, nombres, apellidos, fec_nacimiento, direccion, telefono, email, genero, peso_libras, estado, id_tipo_persona) values ('9964655770212', 'Alis', 'Randell', '12/10/2001', '876 Hintze Point', '96877973', 'arandell2r@va.gov', 'F', 149, 1, 1);
