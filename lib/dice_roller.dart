import 'dart:math';

import 'package:flutter/material.dart';


class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

// El guion bajo significa que esta clase es privada, no podemos acceder a ella de ninguna manera. 
class _DiceRollerState extends State<DiceRoller>{
  final randomizador = Random(); // Si creamos este objetos evitamos sobrecargar la memoria del dispositivo guardando muchos numeros
  var currentDiceRoll = 2;

  void lanzarDado(){

    setState(() { // Este metodo dice que debemos reejecutar la funcion de construccion o build function 

    // Para escribir el valor de una variable en un string usamos $<nombre de la variable> dentro del string
      currentDiceRoll = randomizador.nextInt(6) + 1 ;
    });
  }
  
  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min, // Con argumento cambiamos la posición de nuestra imagen. 
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                  width: 200,
              ),
            TextButton(
              onPressed: lanzarDado, // Aqui podemos hacer una funcion dummy (){y aqui poner lo que vamos a hacer en la funcion aparte}
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20, 
                ),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
                ),
              child: const Text('Lanzar Dado'),
              )
            ],
            );
  }
}