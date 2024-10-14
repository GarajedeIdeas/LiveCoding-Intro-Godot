# LiveCoding-Intro-Godot
/// Intro a Godot: creando nuestro primer videojuego ➔ https://www.youtube.com/watch?v=4JYdLynqJNg


<!-- vscode-markdown-toc -->
* 1. [Acerca de Godot](#AcercadeGodot)
* 2. [Descargando el motor](#Descargandoelmotor)
* 3. [Creando tu primer proyecto](#Creandotuprimerproyecto)
* 4. [Conociendo la Interfaz](#ConociendolaInterfaz)
	* 4.1. [Panel de escenas:](#Paneldeescenas:)
	* 4.2. [Menú superior y pestañas](#Mensuperiorypestaas)
	* 4.3. [Inspector](#Inspector)
	* 4.4. [Sistema de archivos](#Sistemadearchivos)
	* 4.5. [Ventana de Script](#VentanadeScript)
	* 4.6. [Vista de escena](#Vistadeescena)
	* 4.7. [Pestaña de señales](#Pestaadeseales)
	* 4.8. [GDScript](#GDScript)
* 5. [Conceptos básicos](#Conceptosbsicos)
	* 5.1. [Nodos:](#Nodos:)
	* 5.2. [Señales:](#Seales:)
	* 5.3. [Escena:](#Escena:)
* 6. [Creando nuestro primer videojuego](#Creandonuestroprimervideojuego)
	* 6.1. [Crear un nuevo proyecto](#Crearunnuevoproyecto)
	* 6.2. [Creando el jugador:](#Creandoeljugador:)
		* 6.2.1. [CharacterBody2D](#CharacterBody2D)
		* 6.2.2. [Sprite2D](#Sprite2D)
		* 6.2.3. [CollisionShape2D](#CollisionShape2D)
		* 6.2.4. [Animator](#Animator)
		* 6.2.5. [Script de movimiento](#Scriptdemovimiento)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->


##  1. <a name='AcercadeGodot'></a>Acerca de Godot 
Godot se ha consolidado como una de las opciones más populares para el desarrollo de videojuegos, destacando como el único motor de los tres principales que cuenta con una licencia de código abierto y libre (MIT). Cuenta con más de 2500 contributors, lo cual ha impulsado su crecimiento en los últimos años.

Uno de los principios de Godot es ofrecer una experiencia de aprendizaje amigable, por lo que tiene una curva de aprendizaje suave que facilita la incorporación tanto de principantes como desarrolladores más experimentales.

Te permite exportar para diferentes plataformas de manera nativa (PC, móviles y web) y cuenta con interfaces para añadir funcionalidad extra al motor a través de extensiones en C++.

##  2. <a name='Descargandoelmotor'></a>Descargando el motor

- Visita la página oficial de Godot: https://godotengine.org/
- Descarga la última versión estable que se adapte a tu sistema operativo (Windows, macOS o Linux). En el momento que se realizó este taller se trata de la 4.3
- Descarga el archivo comprimido correspondiente y descomprímelo.

Se trata de una aplicación standalone, por lo que no requiere instalación.

##  3. <a name='Creandotuprimerproyecto'></a>Creando tu primer proyecto

##  4. <a name='ConociendolaInterfaz'></a>Conociendo la Interfaz
###  4.1. <a name='Paneldeescenas'></a>Panel de escenas: 
Aquí es donde se construye la escena de tu juego, agregando y organizando los nodos que representan los diferentes elementos visuales y funcionales de tu juego.

###  4.2. <a name='Mensuperiorypestaas'></a>Menú superior y pestañas
Te permite selecccionar las distitnas opciones, cambiar entre la vista de escena o scripts y ejecutar nuestro juego.

###  4.3. <a name='Inspector'></a>Inspector
Nos da información extra sobre el objeto (nodo) que tenemos seleccionado en nuestro panel de escenas. Desde aquí podemos ver la información del nodo y cambiar sus características si fuera necesario.

###  4.4. <a name='Sistemadearchivos'></a>Sistema de archivos
Los archivos que están incluídos en nuestros proyectos, como scripts, imágenes o archivos de audio, que podrémos agregar a nuestras escenas para crear nuestro juego.

###  4.5. <a name='VentanadeScript'></a>Ventana de Script
Godot tiene un IDE integrado, por lo que podremos escribir código para el juego sin necesidad de abrir un editor externo. 

###  4.6. <a name='Vistadeescena'></a>Vista de escena
La representación visual de la escena que estamos modificando y que está abierta en nuestro panel de escenas. Aquí podremos mover, reescalar o rotar los diferentes objetos que forman la escena y se verán reflejados en el panel de escena.

###  4.7. <a name='Pestaadeseales'></a>Pestaña de señales
En esta ventana podemos conectar señales, del objeto (nodo) seleccionado en el panel de escena. Según el tipo de nodo que hayamos seleccionado va a emitir señales diferentes que podremos conectar con otros nodos. Es una de las maneras más simples de conectar distintos elementos del juego para que interaccionen entre ellos.

###  4.8. <a name='GDScript'></a>GDScript
Godot tiene suporte oficial de varios lenguajes de programación:
- GDScript - Desarrollado específicamente para Godot. Se trata de un lenguaje simple de tipado débil que puede recordarnos mucho a Python.
- C#
- C++ - A través de de GDExtension. Normalmente no se usará para programar el comportamiento del juego, pero puede resultar muy útil para optimizar determinados cálculos a bajo nivel o implementar módulos o funcionalidad extra al motor.

También hay varios lenguajes soportados por la comunidad, como son JavaScript, Lua, Nim, Rust o Typescript.

##  5. <a name='Conceptosbsicos'></a>Conceptos básicos
###  5.1. <a name='Nodos:'></a>Nodos:
Es la base de Godot. Cada uno de los objetos que añades a una escena es un Nodo el cuál está contenido en otros nodos. Cualquier Nodo puede tener un script que extienda su comportamiento. Puedes guardar estos nodos en tu Sistema de archivos como una **Escena** para poder reutilizarla más adelante.
###  5.2. <a name='Seales:'></a>Señales:
Son eventos con los que los nodos se comunican entre ellos. Pueden configurarse tanto en los scripts como en el mismo editor.
###  5.3. <a name='Escena:'></a>Escena:
Son nodos que has guardado en el Sistema de Archivos para reutilizar más adelante. Se pueden crear copias (instancias) tanto a través de código como arrastrándolo a nuestra ventana de juego.


##  6. <a name='Creandonuestroprimervideojuego'></a>Creando nuestro primer videojuego
###  6.1. <a name='Crearunnuevoproyecto'></a>Crear un nuevo proyecto


###  6.2. <a name='Creandoeljugador:'></a>Creando el jugador:
####  6.2.1. <a name='CharacterBody2D'></a>CharacterBody2D
Vamos a crear un nuevo Nodo Raíz y buscaremos un CharacterBody2D. Se trata de un nodo tipo 2D que tiene funcionalidad básica para mover un personaje en un escenario.
####  6.2.2. <a name='Sprite2D'></a>Sprite2D
Pero además de moverse, necesitaremos que nuestro personaje tenga una representación visual en el juego. Vamos a añadir un hijo a nuestro jugador de tipo Sprite2D y asignarle a este la imagen de nuestro personaje.
Si no nos gusta el suavizado que añade Godot a nuestro sprite, podemos cammbiar la manera en la que se van a renderizar las texturas. Para ello vamos a Proyecto -> Configuración del proyecto -> Renderizado de texturas -> Filtro y lo setearemos como Nearest.
####  6.2.3. <a name='CollisionShape2D'></a>CollisionShape2D
Querremos también que nuestro personaje pueda chocarse contra objetos o recoger objetos del suelo. Para ello vamos a añadir un CollisionShape2D como hijo de nuestro juigador y, en el inspector, poner una forma circular, ya que es la que más se adapta a nuestro personaje.
####  6.2.4. <a name='Animator'></a>Animator
Para que nuestro personaje no esté demasiado estático y dar algo de dinamismo, vamos a añadir una pequeña animación de rotación para que acompañe al movimiento. 
Para ello crearemos una nueva Animación y añadimos un keyframe ligado a la rotación del Sprite2D en nuestra línea de tiempo
####  6.2.5. <a name='Scriptdemovimiento'></a>Script de movimiento
Vamos a añadir un script a nuestro CharacterBody, así le diremos cómo queremos que se mueva. Vamos a crear un nodo por defecto aunque Godot nos permite tener una plantilla de movimiento básico, haremos uno más simple.

``` GDScript
extends CharacterBody2D
var speed: int = 200

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()

```

