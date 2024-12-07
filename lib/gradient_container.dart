// Siempre debemos importar las librerias para cada nuevo archivito que estemos usando
import 'package:flutter/material.dart';
import 'package:primer_programa/styled_text.dart'


/// Vamos a crear una clase que contenga todas las caracteristicas que habiamos programado antes. 
/// 
// la palabra extends se refiere a que vamos a heredar algunas caracteristicas de la funcion StatelessWidget
class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key}); // Asi inicializamos nuestra clase

  @override // Este decorador no es necesarios, pero asi especificacmos que estamos sobre escribiendo un metodo
  Widget build(context){// la funcion build va a retornar un Widget
    return Container(
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
            child: StyledText(),
          ),
        );
  }
}


