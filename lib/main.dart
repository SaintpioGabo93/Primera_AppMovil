// Vamos a comenzar desde el inicio
// Tenemos que importar las librerias que vamos a usar
import 'package:flutter/material.dart'; // Importamos nombre del paquete: flutter/nombre de la dependencia

// Para que podamos correr una funcion en flutter, necesitamos envolverla en una funcion hecha a mano
void main() {
  // main es lo que se conoce como nombre de la funcion
  // void es el retunr type

  // lo que esta adentro de los curly brackets es el cuerpo de la funcion
  runApp(
     MaterialApp(
      home: Scaffold(
        // Existen algunos widgets que no necesitan estar dentro de un widget
        
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 129, 24, 129),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
          ),
          child: const Center(
            child: Text('Hola Mundo!', 
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 28
              ),
              ),
          ),
        ),
      ),
    ),
  ); // Esta es una funcion de flutter para levantar y correr la app. Su trabajo es mostrar alguna interface de usuario
  // Para que que podamos usar la funcion runApp, necesitamos importar la libreria y paqueteria, para necesitamos ir a nuestro archivo pubspec.yaml
  // runApp(MaterialApp(home: Text('Hola Mundo!'))) Para mejorar este codigo, debemos añadir const tal cual hicimos en el código final.
  // Cuando añadimos la palabra const, vamos a volver a utilizar el mismo espacio de memoria que ya se había creado una vez que volvamos
  // a esa misma página, así no se vuelve a utilizar otro espacio de memoria extra para volver a ejecutar ese mismo widget u elemento.
  // La función Scaffold es un argumento de cuerpo
  // Para ver las opciones de centrar los widgets podemos revisar la documentación de flutter en la sección Center class.
  // Como estamo observando, para contruir en flutter, tenemos que tener widger dentro de widges dentro de widgets para crear
  // un árbol de widgets
  // así que en esta función volvemos a envolver con un widget la función Text: runApp(const MaterialApp(home: Scaffold(body: Text('Hola Mundo!'))));
  // a este arbol de widgets runApp(const MaterialApp(home: Scaffold(body: Center(child: Text('Hola Mundo!')))));
  // Para que el árbol de widgets no sea tan largo, podemos añadir comas al final de cada parentesis
  // runApp(const MaterialApp(home: Scaffold(body: Center(child: Text('Hola Mundo!'),),),),); y usar Format Document para dar formato al
  // código, y tendremos una mejor indentación. :)
  // Existen algunos widgets que no necesitan estar dentro de un widget 
  // Para mofificar al color:
  //  
  // home: Scaffold(
        // backgroundColor: Colors.deepPurple,
// Tambien
  // home: Scaffold(
        // backgroundColor: Colors.fromARGB(255, 63, 5, 120),

  // Widgets = Objects = Data Structures in Memory

  //Los valores son obejtos importantes en dart, porque toso nuestros valores son objetos al final del dia. 
  // Para hacer un gradiente de color, necesitamos agreagar un widget entre Scaffold y Center, así que damos click derecho en 
  // center y le damos a refactor y añadir contenedor. Lo que vamos a ver es que nos va a salir un error, ya sólo vemos las
  // indicaciones que nos da para corregir el error y listo. 
  // Dentro del body de nuevo container añadimos decoration: y luego usamos BoxDecoration, BoxDecoration debe estar en const. 
  // Para alinear 
}
