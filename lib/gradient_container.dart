// Siempre debemos importar las librerias para cada nuevo archivito que estemos usando
import 'package:flutter/material.dart';
// import 'package:primer_programa/styled_text.dart'; Ya no estamos usando este archivo, por eso lo quitamos
import 'package:primer_programa/dice_roller.dart';

/// Declarar así las variables implica que las podemos cambiar con el tiempo, por lo cual no pueden ser const
/// pero si en lugar de var utilizamos final, con esto decimos que nuestra variable no va a volver a recibir nunca mas
/// ningun otro valor
/// 
const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;


/// Vamos a crear una clase que contenga todas las caracteristicas que habiamos programado antes. 
/// 
// la palabra extends se refiere a que vamos a heredar algunas caracteristicas de la funcion StatelessWidget
class GradientContainer extends StatelessWidget{ // Estos StatelessWidget no funcionan si necesitamos tomar datos dinamicos, porque se mantiene estatica la imagen 
  
  const GradientContainer(this.color1, this.color2, {super.key}); // Asi inicializamos nuestra clase


  final Color color1;
  final Color color2;


  @override // Este decorador no es necesarios, pero asi especificacmos que estamos sobre escribiendo un metodo
  Widget build(context){// la funcion build va a retornar un Widget
    return Container(
          /// El widget `Container` se utiliza para crear un gradiente de colores.
          /// 
          /// - Se agrega entre `Scaffold` y `Center` para aplicar un fondo decorado.
          /// - La propiedad `decoration` usa `BoxDecoration` para definir un gradiente.
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:  [color1, color2], // Asi podemos pasar en main.dart nuestos argumentos de color
              begin: startAligment,
              end: endAligment,
            ),
          ),
          child: const Center(
            /// El widget `Center` alinea su hijo en el centro del área disponible.
            /// 
            /// - Aquí envuelve un `Text` para centrarlo en la pantalla.
            child: DiceRoller(), 
          ),
        );
  }
}


