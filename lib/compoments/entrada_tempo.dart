import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String unidade;

  final void Function()? inc; 
  final void Function()? dec;
  
  const EntradaTempo({
       Key? key, 

       required this.valor,
       required this.inc,
       required this.dec,
       required this.unidade,
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store = Provider.of<PomodoroStore>(context);
    
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: this.dec,
                style: ElevatedButton.styleFrom(
                  backgroundColor: store.estaTrabalhando()? Colors.red: Colors.green,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                child: const Icon(Icons.arrow_downward, color: Colors.white)),
            Text('${this.valor} ${this.unidade}',
                style: const TextStyle(
                  fontSize: 18,
                )),
            ElevatedButton(
                onPressed: this.inc,
                style: ElevatedButton.styleFrom(
                  backgroundColor: store.estaTrabalhando()? Colors.red: Colors.green,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                child:const Icon(Icons.arrow_upward, color: Colors.white)),
          ],
        );
       
  }
}
