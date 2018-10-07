/* Producto (PRODUCTO, CANTIDAD Y DIA) del que se han vendido m�s unidades en un d�a*/

SELECT PRODUCTO, CANTIDAD, DIA FROM VENTAS WHERE CANTIDAD = (SELECT MAX (CANTIDAD) FROM VENTAS)

SELECT TOP 1 PRODUCTO, CANTIDAD, DIA FROM VENTAS ORDER BY CANTIDAD DESC

/* Cantidad vendida de cada roducto (PRODUCTO, TOTAL)*/

SELECT PRODUCTO, SUM (CANTIDAD) TOTAL FROM VENTAS 
	GROUP BY PRODUCTO

/* Cantidad vendida de cada Producto (PRODUCTO, TOTAL) mayor que 'P02'*/

SELECT PRODUCTO, SUM (CANTIDAD) TOTAL FROM VENTAS 
	GROUP BY PRODUCTO
	HAVING PRODUCTO > 'P02'

/* Cantidad vendida de cada Producto (PRODUCTO, TOTAL) mayor que 'P02' descartando las menores de 10 */

SELECT PRODUCTO, SUM (CANTIDAD) TOTAL FROM VENTAS
	WHERE CANTIDAD > 9
	GROUP BY PRODUCTO
	HAVING PRODUCTO > 'P02'

/* Cantidad vendida de cada roducto (PRODUCTO, TOTAL) en cada d�a*/

SELECT PRODUCTO, DIA, SUM (CANTIDAD) TOTAL FROM VENTAS 
	GROUP BY PRODUCTO, DIA

/* PRODUCTOS, DIA, CANTIDAD Y DIFERENCIA RESPECTO A LA MEDIA de los que se ha vendido m�s de la media */

SELECT PRODUCTO, DIA, CANTIDAD, CANTIDAD - (SELECT AVG(CANTIDAD) FROM VENTAS) AS DIFERENCIA  FROM VENTAS 
	WHERE CANTIDAD > (SELECT AVG(CANTIDAD) FROM VENTAS) 

/* �Cu�ntas filas de ventas hay en la tabla correspondientes al d�a 1? */

SELECT COUNT (*) 'N. FILAS DEL DIA 1' FROM VENTAS WHERE DIA = 1

/* Obtener la media de ventas de cada d�a */

SELECT DIA, AVG (CANTIDAD) MEDIA FROM VENTAS
	GROUP BY DIA
	
/* Obtener la media de ventas de cada d�a ordenadas por la media, orden descendente */

SELECT DIA, AVG (CANTIDAD) MEDIA FROM VENTAS
	GROUP BY DIA
	ORDER BY AVG(CANTIDAD) DESC

/* �Cu�l es el m�nimo de ventas de cada d�a? */

SELECT DIA, MIN(CANTIDAD) M�NIMO FROM VENTAS
	GROUP BY DIA

/* �Cu�l es el m�ximo de ventas de cada d�a? */

SELECT DIA, MAX(CANTIDAD) M�XIMO FROM VENTAS
	GROUP BY DIA

/* Mostrar todos los datos, pero escribiendo en cada fila el d�a de la semana y no el n�mero almacenado */
SELECT cod_venta, PRODUCTO, 'D�a de la semana' =
	CASE
		WHEN DIA=1 THEN 'Lunes'
		WHEN DIA=2 THEN 'Martes'
		WHEN DIA=3 THEN 'Mi�rcoles'
		WHEN DIA=4 THEN 'Jueves'
		ELSE 'Otro d�a'
	END, cantidad
	FROM VENTAS


/* Crear una vista llamada MAXIMA_VENTA que devuelva el producto (PRODUCTO, CANTIDAD Y DIA) del que se han vendido m�s unidades en un d�a*/

CREATE VIEW MAXIMA_VENTA AS
SELECT PRODUCTO, CANTIDAD, DIA FROM VENTAS WHERE CANTIDAD = (SELECT MAX (CANTIDAD) FROM VENTAS)

/* Utilizar la vista anterior */
SELECT * FROM MAXIMA_VENTA

/* Crear un procedimiento llamado P_MAXIMA_VENTA que devuelva el producto (PRODUCTO, CANTIDAD Y DIA) del que se han vendido m�s unidades en un d�a*/

CREATE PROCEDURE P_MAXIMA_VENTA AS
SELECT PRODUCTO, CANTIDAD, DIA FROM VENTAS WHERE CANTIDAD = (SELECT MAX (CANTIDAD) FROM VENTAS)

/* Utilizar el procedimiento anterior */

EXEC P_MAXIMA_VENTA
EXECUTE P_MAXIMA_VENTA
P_MAXIMA_VENTA