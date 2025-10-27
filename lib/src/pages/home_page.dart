import 'package:flutter/material.dart';
import 'package:onepiece_list/src/widgets/header.dart';
import 'package:onepiece_list/src/widgets/list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      //backgroundColor: const Color(0xff21E295),
      body: Column( //Columna de arriba habia abajo con varias filas
        children: const <Widget>[
          HeaderWidget(),
          ListaPersonajes()
        ],
      ),

floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: const Color.fromARGB(255, 253, 253, 253),
  shape: const CircleBorder(), // 👈 asegura forma perfectamente circular
  child: const Icon(Icons.add, color: Colors.black),
),
    );
  }
}