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