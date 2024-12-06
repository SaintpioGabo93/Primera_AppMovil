/// Importación de librerías necesarias.
/// 
/// - `flutter/material.dart` es un paquete de Flutter que contiene herramientas para construir interfaces de usuario.
/// - Se deben incluir las dependencias necesarias en el archivo `pubspec.yaml`.
import 'package:flutter/material.dart';

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
    MaterialApp(
      home: Scaffold(
        /// El widget `Scaffold` proporciona una estructura base para la aplicación.
        /// 
        /// - Puede incluir elementos como `AppBar`, `Body` y otros componentes.
        /// - Aquí se utiliza para configurar la interfaz principal.
        body: Container(
          /// El widget `Container` se utiliza para crear un gradiente de colores.
          /// 
          /// - Se agrega entre `Scaffold` y `Center` para aplicar un fondo decorado.
          /// - La propiedad `decoration` usa `BoxDecoration` para definir un gradiente.
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 129, 24, 129),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            /// El widget `Center` alinea su hijo en el centro del área disponible.
            /// 
            /// - Aquí envuelve un `Text` para centrarlo en la pantalla.
            child: Text(
              'Piter es gei, jajajaja',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
