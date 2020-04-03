 /*
PROYECTO CROSSFIT
Curso: Diseño y Construcción de Data Warehouse
Autores:
    Lilian Rebeca Carrera Lemus
    José Armando Barrios León

Vistas Requeridas:
1.Vista del Leaderboard del día, recuerde que los RX+ van primero, los RX van sguido y los scaled van de ultimo.
2.Vista de atletas que no están solventes.
3.Vista de PRs por movimiento por atleta más 90%, 80%, 70% y 60% del valor del PR, se debe incluir la fecha en la que se cumplió con el PR.
4.Vista de top 10 de resultados de WoDs “thegirls”.
5.Vista que permitir a cualquier atleta activo revisar log de sus clases y punteos desde que inicio en el box.
*/

USE CROSSFIT;

#1.Vista del Leaderboard del día, recuerde que los RX+ van primero, los RX van sguido y los scaled van de ultimo.
CREATE PROCEDURE leaderboard_dia(_fecha DATE)
BEGIN
    DECLARE Fecha DATE;
    SELECT _fecha INTO Fecha;

    SELECT*
    FROM (
             SELECT p.dpi             DPI,
                    p.nombres         Nombre,
                    p.apellidos       Apellidos,
                    w.nombre          'Nombre WoD',
                    m.nombre          Modalidad,
                    ds.record_wod     'Calificación WoD',
                    CONCAT(CONVERT(ds.puntuacion_wod, DECIMAL(3,0)),' (',ds.peso,')') 'Puntuación',
                    tp.descripcion   'Tipo Puntuación'
             FROM detalle_sesion ds
                      INNER JOIN personas p ON ds.dpi_atleta = p.dpi
                      INNER JOIN sesion s ON ds.id_sesion = s.id_sesion
                 AND s.fecha = Fecha
                      INNER JOIN clase c ON s.id_clase = c.id_clase
                      INNER JOIN wod w ON c.id_wod = w.id_wod
                      INNER JOIN categoria_wod cw ON w.id_categoria = cw.id_categoria
                      INNER JOIN modalidad m ON w.id_modalidad = m.id_modalidad
                      INNER JOIN tipo_puntuacion tp ON w.id_tipo_puntuacion = tp.id_tipo_puntuacion
                 AND tp.id_tipo_puntuacion = 2
             ORDER BY ds.record_wod , ds.puntuacion_wod ASC) a
    UNION ALL
    SELECT *
    FROM (
             SELECT p.dpi             DPI,
                    p.nombres         Nombre,
                    p.apellidos       Apellidos,
                    w.nombre          'Nombre WoD',
                    m.nombre          Modalidad,
                    ds.record_wod     'Calificación WoD',
                    CONCAT(CONVERT(ds.puntuacion_wod, DECIMAL(3,0)),' (',ds.peso,')') 'Puntuación',
                    tp.descripcion   'Tipo Puntuación'
             FROM detalle_sesion ds
                      INNER JOIN personas p ON ds.dpi_atleta = p.dpi
                      INNER JOIN sesion s ON ds.id_sesion = s.id_sesion
                 AND s.fecha = Fecha
                      INNER JOIN clase c ON s.id_clase = c.id_clase
                      INNER JOIN wod w ON c.id_wod = w.id_wod
                      INNER JOIN categoria_wod cw ON w.id_categoria = cw.id_categoria
                      INNER JOIN modalidad m ON w.id_modalidad = m.id_modalidad
                      INNER JOIN tipo_puntuacion tp ON w.id_tipo_puntuacion = tp.id_tipo_puntuacion
                 AND (tp.id_tipo_puntuacion = 1 OR tp.id_tipo_puntuacion = 3)
             ORDER BY ds.record_wod ,ds.puntuacion_wod DESC) b;

END;

CALL leaderboard_dia('2020-02-03');


#2.Vista de atletas que no están solventes.
CREATE OR REPLACE VIEW atletas_insolventes AS
    SELECT DPI,
           NOMBRES Nombre,
           APELLIDOS Apellidos,
           fec_nacimiento Fecha_Nacimiento,
           DIRECCION Direccion,
           TELEFONO Telefono,
           EMAIL email,
           GENERO Genero,
           'INSOLVENTE' Estado
    FROM personas
    WHERE estado = 0
    AND id_tipo_persona = 1;

SELECT * FROM atletas_insolventes;

#3.Vista de PR spor movimiento por atleta más 90%, 80%, 70% y 60% del valor del PR, se debe incluir la fecha en la que se cumplió con el PR
CREATE OR REPLACE VIEW porcentaje_pesosPR AS
    SELECT pr.dpi_atleta,
           p.nombres Nombre,
           p.apellidos Apellidos,
           s.fecha 'Fecha Sesión',
           h.hora_inicio Hora,
           e.nombre_area_especialidad Especialidad,
           m.nombre Ejercicio,
           MAX(pr.peso_pr) 'Peso Record',
           MAX(pr.peso_pr) * 0.9 '90% del Peso',
           MAX(pr.peso_pr) * 0.8 '80% del Peso',
           MAX(pr.peso_pr) * 0.7 '70% del Peso',
           MAX(pr.peso_pr) * 0.6 '60% del Peso'
    FROM historial_pr pr
        INNER JOIN sesion s on pr.id_sesion = s.id_sesion
        INNER JOIN horario h on s.id_horario = h.id_horario
        INNER JOIN personas p on pr.dpi_atleta = p.dpi
        INNER JOIN movimientos m on pr.id_movimiento = m.id_movimiento
        INNER JOIN especialidad e ON e.id_especialidad = pr.id_especialidad
    GROUP BY pr.dpi_atleta, p.nombres, p.apellidos, s.fecha, h.hora_inicio, e.nombre_area_especialidad, m.nombre;

SELECT * FROM porcentaje_pesosPR;


#4.Vista de top 10 de resultados de WoDs “thegirls”

CREATE PROCEDURE top_the_girl(n_wod VARCHAR(50))
BEGIN
    DECLARE NWod VARCHAR(50);
    SELECT n_wod INTO NWod;


    SELECT*
    FROM (
             SELECT p.dpi             DPI,
                    p.nombres         Nombre,
                    p.apellidos       Apellidos,
                    ds.record_wod     'Calificación WoD',
                    w.nombre          'Nombre WoD',
                    m.nombre          Modalidad,
                    ds.puntuacion_wod 'Puntuación',
                    tp.descripcion   'Tipo Puntuación'
             FROM detalle_sesion ds
                      INNER JOIN personas p ON ds.dpi_atleta = p.dpi
                      INNER JOIN sesion s ON ds.id_sesion = s.id_sesion
                      INNER JOIN clase c ON s.id_clase = c.id_clase
                      INNER JOIN wod w ON c.id_wod = w.id_wod
                 AND w.nombre = NWod
                      INNER JOIN categoria_wod cw ON w.id_categoria = cw.id_categoria
                 AND cw.nombre = 'The Girls'
                      INNER JOIN modalidad m ON w.id_modalidad = m.id_modalidad
                      INNER JOIN tipo_puntuacion tp ON w.id_tipo_puntuacion = tp.id_tipo_puntuacion
                 AND tp.id_tipo_puntuacion = 2
             ORDER BY ds.puntuacion_wod ASC
             LIMIT 10) a
    UNION ALL
    SELECT *
    FROM (
             SELECT p.dpi             DPI,
                    p.nombres         Nombre,
                    p.apellidos       Apellidos,
                    ds.record_wod     'Calificación WoD',
                    w.nombre          'Nombre WoD',
                    m.nombre          Modalidad,
                    ds.puntuacion_wod 'Puntuación',
                    tp.descripcion   'Tipo Puntuación'
             FROM detalle_sesion ds
                      INNER JOIN personas p ON ds.dpi_atleta = p.dpi
                      INNER JOIN sesion s ON ds.id_sesion = s.id_sesion
                      INNER JOIN clase c ON s.id_clase = c.id_clase
                      INNER JOIN wod w ON c.id_wod = w.id_wod
                 AND w.nombre = NWod
                      INNER JOIN categoria_wod cw ON w.id_categoria = cw.id_categoria
                 AND cw.nombre = 'The Girls'
                      INNER JOIN modalidad m ON w.id_modalidad = m.id_modalidad
                      INNER JOIN tipo_puntuacion tp ON w.id_tipo_puntuacion = tp.id_tipo_puntuacion
                 AND (tp.id_tipo_puntuacion = 1 OR tp.id_tipo_puntuacion = 3)
             ORDER BY ds.puntuacion_wod DESC
             LIMIT 10) b;

END;

CALL top_the_girl('Elizabeth');

/*
#4.Vista de top 10 de resultados de WoDs “thegirls”
Se crearon dos versiones, ya que no todos los WoDs tienen la misma forma para puntearse (de ser medidos)
*/
CREATE OR REPLACE VIEW Top_The_Girls AS
SELECT p.dpi DPI,
       p.nombres Nombre,
       p.apellidos Apellidos,
       ds.record_wod 'Calificación WoD',
       w.nombre 'Nombre WoD',
       m.nombre Modalidad,
       ds.puntuacion_wod 'Puntuación'
FROM detalle_sesion ds
   INNER JOIN personas p
       ON ds.dpi_atleta = p.dpi
    INNER JOIN sesion s
        ON ds.id_sesion = s.id_sesion
    INNER JOIN clase c
        ON s.id_clase = c.id_clase
    INNER JOIN wod w
        ON c.id_wod = w.id_wod
    INNER JOIN categoria_wod cw
        ON w.id_categoria = cw.id_categoria
        AND cw.nombre = 'The Girls'
    INNER JOIN modalidad m
        ON w.id_modalidad = m.id_modalidad
ORDER BY ds.puntuacion_wod ASC
LIMIT 10;

SELECT * FROM Top_The_Girls;

#5.Vista que permitir a cualquier atleta activo revisar log de sus clases y punteos desde que inicio en el box.
CREATE PROCEDURE log_clases(_dpi_atleta NUMERIC(20))
BEGIN
    DECLARE dpiAtleta NUMERIC(20);
    SELECT _dpi_atleta INTO dpiAtleta;

    SELECT p.nombres Nombre,
           p.apellidos Apellidos,
           s.fecha 'Fecha Sesión',
           h.hora_inicio Hora,
           ds.peso 'Peso Registrado (lb)',
           ds.puntuacion_wod,
           ds.record_wod 'Calificación WoD',
            w.nombre 'Nombre WoD',
            ct.nombre 'Categoria WoD'
    FROM detalle_sesion ds
        INNER JOIN sesion s on ds.id_sesion = s.id_sesion
        INNER JOIN horario h on s.id_horario = h.id_horario
        INNER JOIN personas p on ds.dpi_atleta = p.dpi
        INNER JOIN clase c on s.id_clase = c.id_clase
        INNER JOIN wod w on c.id_wod = w.id_wod
        INNER JOIN categoria_wod ct on w.id_categoria = ct.id_categoria
    WHERE ds.dpi_atleta = dpiAtleta
    ORDER BY s.fecha, Hora ASC;
END;

CALL log_clases(9438298670223);
