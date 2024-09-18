# Python Daemon Manager

Bienvenido al **Python Daemon Manager**, un sistema diseñado para gestionar de manera eficiente la descarga y ejecución de varios proyectos Python como daemons en segundo plano. Este proyecto automatiza la instalación de dependencias, la descarga de los proyectos desde un repositorio y su ejecución mediante scripts sencillos.

## Objetivo del Proyecto

El propósito principal de este proyecto es simplificar el manejo de múltiples servicios en Python, descargándolos automáticamente desde un repositorio y ejecutándolos como **daemons** (procesos en segundo plano) utilizando dos componentes clave: `descarga.sh` y `start.sh`. Estos scripts permiten descargar y ejecutar proyectos como **mensajeria** y **wifi**, gestionando la instalación de dependencias y asegurando que los servicios se mantengan en ejecución.

---

## Componentes del Proyecto

### 1. **`descarga.sh`**
   - **Función**: Este script se encarga de descargar los proyectos desde un repositorio remoto.
   - **Detalles**: Este script utiliza comandos de git para clonar o actualizar los proyectos en sus correspondientes directorios locales. Los proyectos actualmente gestionados incluyen **mensajeria** y **wifi**, pero puedes ampliar la lista agregando más proyectos al script.
   
   **Comando para ejecutarlo:**
   ```bash
   ./descarga.sh

### 2. **`start.sh`**
   - **Función**: El segundo componente del sistema es start.sh, el cual gestiona la instalación de dependencias (usando pip) y la ejecución de los archivos main.py de cada proyecto como procesos en segundo plano.
   - **Detalles**:  Este script se asegura de que cada proyecto esté configurado correctamente y en funcionamiento continuo, utilizando requirements.txt para instalar las bibliotecas necesarias, y luego ejecutando los scripts principales (main.py) en cada proyecto..
   
   **Comando para ejecutarlo:**
   ```bash
   ./start.sh

El repositorio debe estar dentro de la carpeta `/home/user/proyectos`.

## Consideraciones

### Variables de Entorno
Puedes configurar variables de entorno dentro de los scripts para personalizar las rutas o el comportamiento de los proyectos. Pero esto estan dentro de los compose que son los mismos stacks en portainer.

## Licencia
Este proyecto está bajo la licencia MIT.


