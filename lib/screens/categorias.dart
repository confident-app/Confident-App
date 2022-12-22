import 'package:flutter/material.dart';

//------- CATEGORIAS
class categorias extends StatefulWidget {
  @override
  State<categorias> createState() => _categoriasState();
}

class _categoriasState extends State<categorias> {
  List<String> categorias = [
    'Remedios Caseros',
    'Medicamentos',
    'Anticonseptivos',
    'Ejercicios',
    'Otra Informaciòn'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => buildCategoria(index),
        ),
      ),
    );
  }

  Widget buildCategoria(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categorias[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.white : Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              height: 1,
              width: 30,
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
