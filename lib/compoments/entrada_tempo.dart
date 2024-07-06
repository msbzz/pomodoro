import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
   
  final void Function()? inc; 
  final void Function()? dec;
  
  const EntradaTempo({
       Key? key, 
       required this.titulo, 
       required this.valor,
       required this.inc,
       required this.dec,
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Text(this.titulo,style:TextStyle(fontSize: 25)),
        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: this.dec,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                ),
                child: Icon(Icons.arrow_downward, color: Colors.white)),
            Text('${this.valor} min',
                style: TextStyle(
                  fontSize: 18,
                )),
            ElevatedButton(
                onPressed: this.inc,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                ),
                child: Icon(Icons.arrow_upward, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
