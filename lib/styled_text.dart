import 'package:flutter/material.dart';


class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key}); // this.text es como aceptamos un argumento

  final String text; // aqui guardamos el argumento 

  @override

  Widget build(context){
    return Text(
              text, // aqui usamo el argumento
              style: const TextStyle(
                color:  Color.fromARGB(255, 255, 255, 255),
                fontSize: 28,
              ),
            );
  }
}