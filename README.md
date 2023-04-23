# Fabian Andres Benavides Valencia

Para ejecutar esta prueba es necesario contar con docker y docker compose

- Lo pirmero es clonar el repositio.
- luego de esto entrar a la carpeta que se clono y ejecutar el siguiente comando: `docker-compose build`
- Una vez se realice la construccion del proyecto se debe ejecutar el comando: `docker-compose run prueba_hoy bash`
- Esto levanta un servicio que contiene el proyecto en Ruby on Rails y otro para una base de datos de postgreSQL.
- Se debe acceder al motor de base de datos con cualquier gestor de base de datos como dbeaver por ejemplo, crear una nuevo conexion para postgres al localhost y con la contraseña asdfgh. Una vez conectado se deben crear las bases de datos prueba_development y prueba_test.
- luego de tener las base de datos creadas en la consola donde esta correindo el proyecto ejecutamos las migraciones.`bundle exec rails db:migrate`
- Y ya podemos iniciar en servidor de rails normalmente `bundle exec rails s`


