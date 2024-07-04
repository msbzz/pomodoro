import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pomodoro/compoments/cronometro.dart';
import 'package:pomodoro/compoments/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro(),),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(titulo: 'Trabalho', valor: 25),
                EntradaTempo(titulo: 'Descanso', valor: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
