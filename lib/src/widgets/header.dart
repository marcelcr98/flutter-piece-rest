import 'package:flutter/material.dart';

class  HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  final tituloTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26
  );

  final subtituloStyle = const TextStyle(
    color: Colors.white,
    fontSize: 17
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 40, 39)
      ),
      child: // de izquierda a derecha
      Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
        Column( mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
          //Elementos
          children: [
            Text("One Piece",style: tituloTextStyle),
            Text("serie",style: subtituloStyle)
          ],
        )
      ],)
    );
  }
}