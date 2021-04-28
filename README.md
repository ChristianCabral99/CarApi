Para poder utilizar la Car API, es necesario contar con los programas Docker Desktop (https://docs.docker.com/docker-for-windows/install/) y Docker Compose (https://docs.docker.com/compose/install/) en su equipo.

Los pasos para preparar la API son los siguientes:
1. Asegurarse de que Docker se encuentra encendido en el equipo.
2. Importar la base de datos "myfirstdb", mediante el respaldo carApi.sql (como alternativa a este método, es posible dirigirse a la carpeta "carDB" y correr el archivo docker-compose mediante la ejecución del comando "docker-compose up -d" en la terminal de Windows).
3. En la terminal del símbolo del sistema de Windows, dirigirse a la carpeta "Django" y correr el archivo docker-compose mediante la ejecución del comando "docker-compose up -d".
4. Asegurar que el archivo "settings.py" en la carpeta Django\app\apirest contenga los datos correctos de la base de datos (líneas 78 a 90).
5. Mediante cualquier aplicación de testeo de APIs (como Insomnia o Postman), comprobar que la API esté funcionando correctamente, ya sea mediante un método o utilizando la ruta principal (http://localhost:8000/).