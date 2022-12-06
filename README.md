# README

### ¿hay algún equivalente a django? 
Sì, `Rails` es el framework mas desarrollado en el ambiente del lenguaje ruby. Se puede instalar con el comando `gem install rails`. Es comùn llamar a Rails como `Ruby on Rails` tambien.

### ¿cómo funciona esa madre de las gemas? 
Son los equivalentes a los paquetes de python que se instalan con Pip. 
Las Gemas de Ruby son paquetes de código que se pueden utilizar en aplicaciones de Ruby para agregar funcionalidades adicionales.  Se han creado para resolver problemas comunes en el desarrollo de aplicaciones de Ruby, como el manejo de bases de datos, el procesamiento de formularios, la autenticación de usuarios y muchas otras cosas. Existen miles de gemas disponibles en la comunidad de Ruby, y se pueden utilizar en cualquier aplicación de Ruby para agregar funcionalidades adicionales. Para instalar una gema se ejecuta el archivo `gem install (nombre_gema)`, para instalar la gema rails se ejecutará `gem install rails`

### ¿que hace el comando de bundle?
El comando gem install tiene la capacidad de instalar gemas una por una, en una aplicaciòn real esto se vuelve tedioso, asi qeu se desarrollò un mecanismo mejor apra instalar gemas y es por medio del archivo `Gemfile`, en dicho archivo se pondrá una lista de gemas y por medio de la gema `bundle`(se puede instalar con `gem install bundler`) se instalan todas las gemas del archivo `Gemfile` con el comando `bundle install` (es equivalente al comando pip y al archivo requirements.txt en python)

### ¿como se dockeriza? ¿cómo hacer un multistage Docker para Que un comando sea el que instala las dependencias y otro para meter el código?
Se encuentra en  dockerfile y Docker Compose Adjuntos


### ¿como es lo de leer variables de ambiente?
Es muy facil, a diferencia de otros lenguajes no hay que importat ninguna libreria adicional, en ruby se usa la constante ENV. Ej: Si tenemos la variable export API_KEY=123456, se puede acceder al valor y guardarlo en la variable key como:
```bash
key = ENV["API_KEY"]
```
Si la variable de entorno no existe se puede poner por defecto un valor:
```bash
key = ENV["API_KEYs"] || 654321
```

### ¿tiene alguna cosa equivalente a los archivos de settings de Python? 
El archivo settings es de Django, En rails para especificar las configuraciones de bases de datos se hace en el archivo `config/database.yml`, la nomenclatura para configurar las variables de entorno no es la misma que para Ruby nativo, puedes ver el ejemplo en el repositorio.

### ¿que es puma? Me suena a que es el equivalente a gunicorn
Puma es un servidor web desarrollado en Ruby que se puede utilizar en aplicaciones de Ruby on Rails. Se ha diseñado para ser rápido, ligero y escalable, y se puede utilizar para manejar una gran cantidad de solicitudes concurrentes, en efecto es el homònimo de `gunicorn` en python.
Para utilizar Puma en una aplicación de Rails, primero debe agregar la gema puma a su archivo Gemfile y ejecutar el comando bundle install para instalarla. Luego, puede configurar Puma en su archivo `config/puma.rb` y ejecutar el comando rails server puma para iniciar el servidor Puma.