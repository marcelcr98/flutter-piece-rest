import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onepiece_list/src/pages/detalle_page.dart';

class ListaPersonajes extends StatefulWidget {
  const ListaPersonajes({super.key});

  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
  double widthpantalla = 0;
  final titulosStyletext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Favoritos", style: titulosStyletext),
          const SizedBox(height: 15),
          //Portadas de izquierda a derecha
          Row(
            children: [
              bloquesPortada("adidas_c1.avif", "Adicolor", ""),
              SizedBox(width: widthpantalla * 0.03),
              bloquesPortada("pelota-adi.webp", "Balón Trionda", ""),
              SizedBox(width: widthpantalla * 0.03),
              bloquesPortada("samba.webp", "Samba OG", ""),
            ],
          ),
          const Divider(height: 30, color: Colors.white),
          const SizedBox(height: 20),
          bloquePersonaje("Polos", 0xff21E295, "shoes-adi"),
          bloquePersonaje("Zapatillas", 0xff21E295, "shoes-adi"),
          bloquePersonaje("Originals", 0xff21E295, "shoes-adi"),
          bloquePersonaje("Buzos", 0xff21E295, "shoes-adi"),
          bloquePersonaje("Fútbol", 0xff21E295, "shoes-adi"),
          bloquePersonaje("Novedades", 0xff21E295, "shoes-adi"),
        ],
      ),
    );
  }

  //Contenedores
  Widget bloquePersonaje(String nombre, int color, String imagen) {
    
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: 
        (context)=> DetailPage(color: color, image: "assets/$imagen.avif",)))
      },
      child: Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(66, 43, 43, 43),

      ),
      height: 65,
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //blurRadius: 5,
                      //offset: const Offset(-7, -5),
                      //blurStyle: BlurStyle.inner,
                      color: Color(color),
                    ),
                  ], //borderRadius: BorderRadius.circular(20)
                ),
                //padding: const EdgeInsets.all(8),
                child: Image.asset("assets/$imagen.avif"),
              ),
              const SizedBox(width: 12),
              Text(
                nombre,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          
          ),
        
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded, color: Colors.grey))
        ],
      ),
    ));
    
  }

  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthpantalla * 0.3,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 15),
        //titulo debajo de las imagenes
        RichText(
          text: TextSpan(
            text: titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            children: [
              TextSpan(
                text: subtitulo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
