import 'package:flutter/material.dart';
import 'package:pomodoro/compoments/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class AjusteTempo extends StatelessWidget {
  final String titulo;
  final int valorMin;
  final int valorSeg;

  final void Function()? incMin; 
  final void Function()? decMin;
  final void Function()? incSeg; 
  final void Function()? decSeg;
  
  const AjusteTempo({
       Key? key, 
       required this.titulo, 
       required this.valorMin,
       required this.valorSeg,
       required this.incMin,
       required this.decMin,
       required this.incSeg,
       required this.decSeg,
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store = Provider.of<PomodoroStore>(context);
    
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Text(this.titulo,style:const TextStyle(fontSize: 25)),
        const SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(children: [
              EntradaTempo(valor: this.valorMin, inc: this.incMin, dec: this.decMin, unidade: 'min'),
              const SizedBox(width:10),
              EntradaTempo(valor: this.valorSeg, inc: this.incSeg, dec: this.decSeg, unidade: 'seg'),
             ],)
          ],
        )
      ],
    );
  }
}
