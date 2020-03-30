CREATE DATABASE IF NOT EXISTS CROSSFIT;
USE CROSSFIT;

/*Esta tabla hace referencia a si el ejercicio es del área de gimnasia, levantamientos de peso, 
  acondicionamiento metabólico, etc*/
CREATE TABLE IF NOT EXISTS area_movimiento (
    id_area_mov    INT  PRIMARY KEY NOT NULL,
    nombre         VARCHAR(100)
);

/*Las categorías de wod son: normal(wod definido por el box), The Girls, Heros, etc.*/
CREATE TABLE IF NOT EXISTS categoria_wod (
    id_categoria    INT  PRIMARY KEY NOT NULL,
    nombre          VARCHAR(200),
    descripcion     VARCHAR(300)
);

CREATE TABLE IF NOT EXISTS warm_up (
    id_warmup            INT PRIMARY KEY NOT NULL,
    descripcion          VARCHAR(300),
    duracion_muinutos    INT
);

/*Las áreas de especialidad son 4: Skills, Fuerza, Lifting, Complex.*/
CREATE TABLE IF NOT EXISTS especialidad(
    id_especialidad             INT PRIMARY KEY NOT NULL,
    nombre_area_especialidad    VARCHAR(100),
    duracion_munutos            INT,
    descripcion                 VARCHAR(200)
);

/*Un wod puede tener diferentes modalidades, las cuales pueden ser: AMRAP, EMOM, For Time, 
  TABATA, For Max Weigth*/
CREATE TABLE IF NOT EXISTS modalidad(
    id_modalidad    INT PRIMARY KEY  NOT NULL,
    nombre          VARCHAR(100),
    descripcion     VARCHAR(300)
);

/*Los tipos de rx son: RX+_masculino, RX+_femenino, Rx_masculino, RX:femenino, Scaled.*/
CREATE TABLE IF NOT EXISTS tipo_rx(
    id_tipo_rx    INT PRIMARY KEY NOT NULL,
    nombre        VARCHAR(100)
);

/*El tipo de puntuación depende de la modalidad del wod, estos pueden ser: rondas, tiempo*/
CREATE TABLE IF NOT EXISTS tipo_puntuacion(
    id_tipo_puntuacion    INT PRIMARY KEY NOT NULL,
    descripcion           VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS wod(
    id_wod                INT PRIMARY KEY NOT NULL,
    nombre                VARCHAR(100),
    duracion_minutos      INT,
    peso_rx               INT,
    puntuacion_meta       INT,
    descanso              VARCHAR(50),
    descripcion           VARCHAR(200),
    id_modalidad          INT  NOT NULL,
    id_categoria          INT  NOT NULL,
    id_tipo_rx            INT  NOT NULL,
    id_tipo_puntuacion    INT  NOT NULL,

    INDEX Ref46(id_modalidad),
    INDEX Ref57(id_categoria),
    INDEX Ref68(id_tipo_rx),
    INDEX Ref189(id_tipo_puntuacion),

    FOREIGN KEY (id_modalidad)
        REFERENCES modalidad(id_modalidad),
    FOREIGN KEY (id_categoria)
        REFERENCES categoria_wod(id_categoria),
    FOREIGN KEY (id_tipo_rx)
        REFERENCES tipo_rx(id_tipo_rx),
    FOREIGN KEY (id_tipo_puntuacion)
        REFERENCES tipo_puntuacion(id_tipo_puntuacion)
);


CREATE TABLE IF NOT EXISTS clase(
    id_clase           INT PRIMARY KEY NOT NULL,
    observaciones      VARCHAR(300),
    id_warmup          INT  NOT NULL,
    id_especialidad    INT  NOT NULL,
    id_wod             INT  NOT NULL,

    INDEX Ref820(id_warmup),
    INDEX Ref921(id_especialidad),
    INDEX Ref722(id_wod),

    FOREIGN KEY (id_warmup)
        REFERENCES warm_up(id_warmup),
    FOREIGN KEY (id_especialidad)
        REFERENCES especialidad(id_especialidad),
    FOREIGN KEY (id_wod)
        REFERENCES wod(id_wod)
);

/*Las movimientos de forma individual pueden tener distintas formas de ser medidos, 
  ejemplos: altura caja, peso, etc.*/
CREATE TABLE IF NOT EXISTS unidad_medida(
    id_u_medida    INT  PRIMARY KEY NOT NULL,
    nombre         VARCHAR(200)
);


CREATE TABLE IF NOT EXISTS movimientos(
    id_movimiento     INT PRIMARY KEY NOT NULL,
    nombre            VARCHAR(300),
    descripcion       VARCHAR(500),
    permite_pr        CHAR(1), #N para no, S para sí
    tipo_ejercicio    VARCHAR(50),
    id_u_medida       INT NOT NULL,
    id_area_mov       INT NOT NULL,

    INDEX Ref24(id_u_medida),
    INDEX Ref175(id_area_mov),

    FOREIGN KEY (id_u_medida)
        REFERENCES unidad_medida(id_u_medida),
    FOREIGN KEY (id_area_mov)
        REFERENCES area_movimiento(id_area_mov)
);

CREATE TABLE IF NOT EXISTS detalle_especialidad(
    id_especialidad    INT  NOT NULL,
    id_movimiento      INT  NOT NULL,
    cantidad_reps      INT  NOT NULL,
    PRIMARY KEY (id_especialidad, id_movimiento),

    INDEX Ref910(id_especialidad),
    INDEX Ref311(id_movimiento),

    FOREIGN KEY (id_especialidad)
        REFERENCES especialidad(id_especialidad),
    FOREIGN KEY (id_movimiento)
        REFERENCES movimientos(id_movimiento)
);

/*Una persona puede ser Atleta o Entrenador*/
CREATE TABLE IF NOT EXISTS tipo_persona(
    id_tipo_persona    INT PRIMARY KEY  NOT NULL,
    nombre_tipo        VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS personas(
    dpi                INT PRIMARY KEY  NOT NULL,
    nombres            VARCHAR(200)   NOT NULL,
    apellidos          VARCHAR(200)   NOT NULL,
    fec_nacimiento     DATE,
    direccion          VARCHAR(300),
    telefono           INT  NOT NULL,
    email              VARCHAR(100),
    genero             CHAR(1),
    peso_libras        DECIMAL(3,0),
    estado             INT,
    id_tipo_persona    INT  NOT NULL,

    INDEX Ref162(id_tipo_persona),

    FOREIGN KEY (id_tipo_persona)
        REFERENCES tipo_persona(id_tipo_persona)
);

/*Los horarios del box ya estan definidos y son: 5:00AM, 6:00AM, 7:00AM, 12:00PM, 
  4:30PM, 5:30PM, 6:30PM, 7:30PM., 8:00AM, 9:30AM y 11:00AM). */
CREATE TABLE IF NOT EXISTS horario(
    id_horario     INT PRIMARY KEY  NOT NULL,https://github.com/yaxha/mdc-dw-proyecto1
    hora_inicio    VARCHAR(10),
    hora_fin       VARCHAR(10)
);

#########################################################
#Esta tabla tendrá un trigger para validar que un entrenador no pueda estar asignado
# a más de 3 sesiones en un mismo día
CREATE TABLE IF NOT EXISTS sesion(
    id_sesion     INT  PRIMARY KEY  NOT NULL,
    fecha         DATE  NOT NULL,
    id_clase      INT   NOT NULL,
    dpi_entrenador  INT   NOT NULL,
    id_horario    INT   NOT NULL,

    INDEX Ref1223(id_clase),
    INDEX Ref124(dpi_entrenador),
    INDEX Ref1925(id_horario),

    FOREIGN KEY (id_clase)
        REFERENCES clase(id_clase),
    FOREIGN KEY (dpi_entrenador)
        REFERENCES personas(dpi),
    FOREIGN KEY (id_horario)
        REFERENCES horario(id_horario)
);

#########################
#Esta tabla tendrá un trigger para validar que un entrenador no este asignado como 
# entrenador y como atleta en una misma sesión
CREATE TABLE IF NOT EXISTS detalle_sesion(
    id_sesion      INT  NOT NULL,
    dpi_atleta     INT  NOT NULL,
    record_wod        VARCHAR(10),
    puntuacion_wod    DECIMAL(4, 2),
    PRIMARY KEY (id_sesion, dpi_atleta),

    INDEX Ref1328(id_sesion),
    INDEX Ref129(dpi_atleta),

    FOREIGN KEY (id_sesion)
        REFERENCES sesion(id_sesion),
    FOREIGN KEY (dpi_atleta)
        REFERENCES personas(dpi)
);
/*
Trigger que verifica que un atleta no intenta hacer una clase cuando ya tuvo otra ese mismo día.
También se verificará que el atleta no sea el entrenador de la sesión
*/
CREATE TRIGGER trg_sesion_atleta
    BEFORE INSERT ON detalle_sesion FOR EACH ROW
    BEGIN
        DECLARE fecha_entrenamiento DATE;

        # Determinar la fecha del entrenamiento que el atleta desea
        SELECT S.fecha
        FROM sesion S
        WHERE S.id_sesion = NEW.id_sesion INTO fecha_entrenamiento;

        # Verificar si existen sesiones con esta fecha y donde haya participado el atleta
        IF EXISTS(SELECT 1
            FROM sesion S2
                INNER JOIN detalle_sesion ds ON S2.id_sesion = ds.id_sesion
            WHERE S2.fecha = fecha_entrenamiento
                AND ds.dpi_atleta = NEW.dpi_atleta)
        THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'No se puede agregar una sesión para para este atleta porque ya tuvo una clase este día';
        END IF;

        # Determinar si el atleta no es el entrenador de esta sesion
        IF EXISTS(SELECT 1
            FROM sesion S
            WHERE S.id_sesion = NEW.id_sesion
                AND S.dpi_entrenador = NEW.dpi_atleta)
        THEN
            SIGNAL SQLSTATE '45001'
                SET MESSAGE_TEXT = 'Este atleta ya es el entrenador de la sesión. No se agregó a la sesión.';
        END IF;
    END;

/*
Trigger para verificar que un entrenador no imparta más de 3 sesiones por día
*/
CREATE TRIGGER trg_sesiones_atleta
    BEFORE INSERT ON sesion FOR EACH ROW
    BEGIN
        # Verificar las sesiones con esta fecha y donde haya participado este entrenador
        IF (SELECT COUNT(1)
            FROM sesion S
            WHERE S.fecha = NEW.fecha
                AND S.dpi_entrenador = NEW.dpi_entrenador
            GROUP BY S.fecha, S.dpi_entrenador) > 3
        THEN
            SIGNAL SQLSTATE '45002'
                SET MESSAGE_TEXT = 'Este entrenador no pudo ser adherido a la sesión porque ya ha dado 3 sesiones este día.';
        END IF;
    END;

CREATE TABLE IF NOT EXISTS detalle_wod(
    id_wod           INT  NOT NULL,
    id_movimiento    INT  NOT NULL,
    cantidad_reps    INT,
    PRIMARY KEY (id_wod, id_movimiento),

    INDEX Ref712(id_wod),
    INDEX Ref313(id_movimiento),

    FOREIGN KEY (id_wod)
        REFERENCES wod(id_wod),
    FOREIGN KEY (id_movimiento)
        REFERENCES movimientos(id_movimiento)
);
########################
/*Esta tabla tendrá un trigger para validar si el peso de PR que está ingresando el atleta es mayor 
al máximo existente para un determinado movimiento en esta tabla para ingresarlo, 
  de lo contrario no se podrá ingresar*/
CREATE TABLE IF NOT EXISTS historial_pr(
    id_sesion          INT  NOT NULL,
    dpi_atleta         INT  NOT NULL,
    id_especialidad    INT  NOT NULL,
    id_movimiento      INT  NOT NULL,
    peso_pr            DOUBLE(4,2),
    PRIMARY KEY (id_sesion, dpi_atleta, id_especialidad, id_movimiento),

    INDEX Ref1432(id_sesion, dpi_atleta),
    INDEX Ref1033(id_especialidad, id_movimiento),

    FOREIGN KEY (id_sesion, dpi_atleta)
        REFERENCES detalle_sesion(id_sesion, dpi_atleta),
    FOREIGN KEY (id_especialidad, id_movimiento)
        REFERENCES detalle_especialidad(id_especialidad, id_movimiento)
);

/*
Trigger para validar que solo se inserten valores donde el peso sea mayor al record anterior
* Que sea un movimiento que permita records personales
* Que el atleta esté solvente para registrar su record
*/
CREATE TRIGGER trg_insert_pr
    BEFORE INSERT ON historial_pr FOR EACH ROW
    BEGIN
        # Verificar que se permitan records personales
        IF (SELECT m.permite_pr
            FROM movimientos m
            WHERE m.id_movimiento = NEW.id_movimiento) = 'S'
        THEN
            # Verificar que esté solvente
            IF (SELECT p.estado
                FROM personas p
                WHERE p.dpi = NEW.dpi_atleta) <> 0
            THEN
                # Verificar que el peso nuevo es mayor al registrado previamente
                IF (SELECT pr.peso_pr
                    FROM historial_pr pr
                    WHERE pr.dpi_atleta = NEW.dpi_atleta
                        AND pr.id_especialidad = NEW.id_especialidad
                        AND pr.id_movimiento = NEW.id_movimiento) > NEW.peso_pr
                THEN
                    SIGNAL SQLSTATE '45003'
                        SET MESSAGE_TEXT = 'Record no insertado porque ya existe uno con mayor peso para este atleta en este movimiento.';
                END IF;
            ELSE
                SIGNAL SQLSTATE '45004'
                    SET MESSAGE_TEXT = 'Este atleta no está solvente. No se registrará su record.';
            END IF;
        ELSE
            SIGNAL SQLSTATE '45005'
                SET MESSAGE_TEXT = 'Este movimiento no permite records personales.';
        END IF;
    END;
