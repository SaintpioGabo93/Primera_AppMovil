/// Importación de librerías necesarias.
/// 
/// - `flutter/material.dart` es un paquete de Flutter que contiene herramientas para construir interfaces de usuario.
/// - Se deben incluir las dependencias necesarias en el archivo `pubspec.yaml`.
import 'package:flutter/material.dart';


/// Importamos una nueva libreria que sera el nombre del archivo que hicimos con la clase
import 'package:primer_programa/gradient_container.dart';
/// Función principal que inicia la aplicación.
///
/// - `main` es el punto de entrada de una aplicación Flutter.
/// - `void` indica que la función no devuelve ningún valor.
/// - Contiene un árbol de widgets que describe la interfaz de usuario.
/// 
/// ### Notas:
/// - El método `runApp` inicia la aplicación y renderiza el árbol de widgets.
/// - Para optimizar el uso de memoria, se recomienda envolver widgets inmutables con `const`.
/// - Flutter utiliza un **árbol de widgets** donde cada widget es un objeto o estructura de datos en memoria.
void main() {
  runApp(
    const MaterialApp( // Como en la clase que hicimos añadimos const, aquí necesitamos añadir un const. 
      home: Scaffold(
        /// El widget `Scaffold` proporciona una estructura base para la aplicación.
        /// 
        /// - Puede incluir elementos como `AppBar`, `Body` y otros componentes.
        /// - Aquí se utiliza para configurar la interfaz principal.
        body: GradientContainer(), // Esta fue la clase que hicimos para ahorar codigo en nuestro loop principal
      ),
    ),
  );
}
