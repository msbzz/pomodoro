import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pomodoro/compoments/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hora de Trabalhar',
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '25:00',
              style: TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CronometroBotao(
                    texto: 'iniciar',
                    icone: Icons.play_arrow,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(right: 10),
                //   child: CronometroBotao(
                //     texto: 'parar',
                //     icone: Icons.stop,
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: CronometroBotao(
                    texto: 'reiniciar',
                    icone: Icons.refresh,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
