#  Mi primer script de Bash: Monitoreando el sistema con htop
## ¿Qué hace este script?
Este script simple verifica si la herramienta htop está instalada en tu sistema. Si no lo está, la instala automáticamente utilizando el gestor de paquetes apt (típico en sistemas basados en Debian como Ubuntu). Una vez instalada, ejecuta htop para mostrarte un monitor interactivo de procesos en tiempo real.
## ¿Por qué usar htop?
htop es una herramienta de línea de comandos más avanzada que top. Te permite ver un listado detallado de los procesos en ejecución, ordenar por diferentes criterios (CPU, memoria, PID, etc.), y realizar varias acciones directamente desde la terminal, como matar procesos o cambiar prioridades.

Cómo usar este script:
Clona el repositorio:

Bash
git clone https://tu-repositorio.git
Usa el código con precaución.

Reemplaza https://tu-repositorio.git con la URL de tu repositorio.

Navega al directorio del script:

Bash
cd tu-repositorio
Usa el código con precaución.

Ejecuta el script:

Bash
bash tu-script.sh
Usa el código con precaución.

Reemplaza tu-script.sh con el nombre exacto de tu archivo de script.

## ¿Cómo funciona el script?
Comprobación de la existencia: El script utiliza el comando command -v para verificar si htop está instalado.
Instalación: Si htop no está instalado, el script ejecuta sudo apt update para actualizar la lista de paquetes disponibles y luego instala htop con sudo apt install -y.
Ejecución: Finalmente, el script ejecuta htop para mostrar el monitor de procesos.
Captura de pantalla:
[Inserta aquí una captura de pantalla de la salida de htop]

## Personalizando el script:
Cambiar la herramienta: Puedes modificar la variable command para verificar y ejecutar cualquier otra herramienta de línea de comandos.
Añadir más comprobaciones: Puedes agregar más condiciones para verificar requisitos adicionales, como la versión del sistema operativo o la disponibilidad de otros paquetes.
Mejorar la salida: Puedes personalizar los mensajes de salida para proporcionar información más detallada al usuario.
## Consejos para principiantes:
Comenta tu código: Añade comentarios para explicar cada parte del script y facilitar su comprensión.
Utiliza variables: Las variables hacen tu código más legible y reutilizable.
Indenta correctamente: La indentación mejora la estructura visual del código.
Prueba tu script: Ejecuta el script con diferentes opciones para asegurarte de que funciona como esperas.
¡Diviértete aprendiendo Bash!

Licencia: MIT
Agradecimientos: learnlinux.tv 
