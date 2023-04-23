Este es un archivo README que describe una serie de ejercicios de consultas agrupadas en SQL. Los ejercicios se utilizan para practicar y mejorar las habilidades en la consulta de bases de datos utilizando el lenguaje SQL.

Descripción

Los ejercicios de consultas agrupadas en SQL son una serie de problemas que se resuelven utilizando consultas SQL para recuperar información de una o varias tablas. Los ejercicios se centran en el uso de funciones de agregación y agrupación para realizar cálculos y generar informes basados en los datos almacenados en una base de datos.

Los ejercicios están diseñados para ayudar a mejorar las habilidades en la consulta de bases de datos utilizando el lenguaje SQL, incluyendo la comprensión y uso de funciones de agregación y agrupación, la creación de subconsultas y la utilización de cláusulas WHERE y HAVING entre otros.

Ejemplo

A continuación se muestra un ejemplo de un problema de consulta agrupada en SQL:

" De la tabla mostrada en el ejercicio, Cuántos inscritos hay por fuente."

Para resolver este problema, se podría utilizar la siguiente consulta SQL:

sql

SELECT fuente, SUM(cantidad) FROM INSCRITOS GROUP BY fuente;

En este ejemplo, la consulta utiliza la función de agregación SUM para sumar la cantidad total de Inscritos y la cláusula GROUP BY para agrupar los resultados por categoría de producto.

Uso; 
Seleccione el archivo
Guardelo en una Carpeta
Por medio de la consola de comando de VSC dirijase a la Ubicacion y ejecutelo desde el administrador con el comando \i script.sql (Nombre del archivo)
Una vez ejecutado, se Creara la BD, se conectara y creara la Tabla con sus respectivos campos.