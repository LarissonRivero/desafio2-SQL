DROP DATABASE IF EXISTS "desafio2-larissonrivero-504";
CREATE DATABASE "desafio2-larissonrivero-504";
\c "desafio2-larissonrivero-504";
CREATE TABLE INSCRITOS(cantidad INT, fecha DATE, fuente VARCHAR);
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 56, '01/01/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 81, '01/02/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 91, '01/03/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 45, '01/04/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 33, '01/05/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/06/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 24, '01/07/2021', 'Pagina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 99, '01/08/2021', 'Pagina' );

--Requerimiento 1; ¿Cuántos registros hay en la tabla INSCRITOS?
--RESULTADO ESPERADO: 16
SELECT COUNT(*) FROM INSCRITOS;

--Requerimiento 2; ¿Cuántos INSCRITOS hay en total?
--RESULTADO ESPERADO: 774
SELECT SUM(cantidad) FROM INSCRITOS;

--Requerimiento 3; ¿Cuál o cuáles son los registros de mayor antigüedad?
--RESULTADO ESPERADO: 01/01/2021
SELECT MIN(fecha) FROM INSCRITOS;

--Requerimiento 4; ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
--RESULTADO ESPERADO: 01/01/2021 100, 01/02/2021 120, 01/03/2021 103, 01/04/2021 93, 01/05/2021 88, 01/06/2021 30, 01/07/2021 58, 01/08/2021 182
SELECT fecha, SUM(cantidad) FROM INSCRITOS GROUP BY fecha;

--Requerimiento 5; ¿Cuántos inscritos hay por fuente?
--RESULTADO ESPERADO: Blog 333, Pagina 441 
SELECT fuente, SUM(cantidad) FROM INSCRITOS GROUP BY fuente;

--Requerimiento 6; ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
--RESULTADO ESPERADO: 01/08/2021 182
SELECT fecha, SUM(cantidad) FROM INSCRITOS GROUP BY fecha ORDER BY SUM(cantidad) DESC LIMIT 1;

--Requerimiento 7; ¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog y cuántas personas fueron?
--RESULTADO ESPERADO: 01/08/2021 83
SELECT fecha, SUM(cantidad) FROM INSCRITOS WHERE fuente = 'Blog' GROUP BY fecha ORDER BY SUM(cantidad) DESC LIMIT 1;

--Requerimiento 8; ¿Cuántas personas en promedio se inscriben en un día?
--RESULTADO ESPERADO: 48.375
SELECT AVG(cantidad) FROM INSCRITOS;

--Requerimiento 9;  ¿Qué días se inscribieron más de 50 personas?
--RESULTADO ESPERADO: 01/01/2021, 01/02/2021, 01/03/2021, 01/04/2021, 01/05/2021, 01/08/2021
SELECT fecha FROM INSCRITOS GROUP BY fecha HAVING SUM(cantidad) > 50  ORDER BY SUM(cantidad) DESC;

--Requerimiento 10; ¿Cuántas personas se registraron en promedio cada día a partir del tercer día (01/03/2021)?
--RESULTADO ESPERADO: 01/04/2021 46.5, 01/05/2021 44, 01/06/2021 15, 01/07/2021 29, 01/08/2021 91  
SELECT fecha, AVG(cantidad) FROM INSCRITOS WHERE fecha > 01/03/2021 GROUP BY fecha ORDER BY fecha;
SELECT fecha, AVG(cantidad) FROM INSCRITOS GROUP BY fecha ORDER BY fecha OFFSET 2; --OFFSET 2 es el tercer registro, Se utilizaria para una tabla con mas registros o si no se conociera el valor de la fecha
