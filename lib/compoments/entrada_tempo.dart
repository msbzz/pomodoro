import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({Key? key, required this.titulo, required this.valor})
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
                onPressed: () {},
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                ),
                child: Icon(Icons.arrow_downward, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
