import 'package:flutter/material.dart';

class ListaPersonajes extends StatefulWidget {

  const ListaPersonajes({super.key});

  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
    final titulosStyletext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold, color: Colors.white
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: ListView(
      children: [
        Text(
          "Portadas",style: titulosStyletext),
        //Portadas de izquierda a derecha
        Row(children: [
          bloquesPortada("fc-sports.jpg","titulo","subtitulo")
        ],)
      ],
    ));
  }

  Column bloquesPortada(String image, String titulo, String subtitulo){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset("assets/$image")

        )
      ],
    );
  }
}