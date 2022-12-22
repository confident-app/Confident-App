import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class pagina_ejercicios extends StatefulWidget {
  @override
  State<pagina_ejercicios> createState() => _pagina_ejerciciosState();
}

class _pagina_ejerciciosState extends State<pagina_ejercicios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Ejercicios'),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 1.0),
                colors: [
                  Color.fromARGB(255, 123, 71, 213),
                  Color.fromARGB(255, 159, 238, 249),
                  Color.fromARGB(255, 1, 203, 230)
                ],
                tileMode: TileMode.repeated)),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-943/1-AdobeStock_153202927-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Trabajo pelvico',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Acuéstate en el suelo, boca arriba y flexiona tus rodillas. Apoya los pies en el suelo a la misma altura que tus caderas. Primero apoya bien la espalda sobre el suelo y luego levanta y baja las caderas muy suavemente. Puedes mantener cada postura durante 40 segundos y repetir 5 veces cada posición ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://www.hogarmania.com/archivos/201105/espalda-rodillas-pecho-668x400x80xX.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Rodillas al pecho',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Lleva tus rodillas al pecho y mantenerlas presionadas por tus brazos. Si las molestias físicas no lo impiden, realiza ligeros círculos con la cadera. Este ejercicio es una manera de masajear la zona y aliviar los dolores de espalda y cintura. Puedes realizar 3 series de 40 segundos cada una. ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-945/3-AdobeStock_154772572-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Postura del gato',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.8),
                        child: Text(
                          'Colócate en cuatro patas sobre la esterilla, las palmas de las manos deben estar a la altura de las caderas. Haz una inhalación profunda y eleva la espalda. Debe formarse un arco entre el tronco y el suelo, mantén esta postura durante 30 segundos y hunde la espalda haciendo el trabajo inverso durante otros 30 segundos. ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-946/4-AdobeStock_265983715-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Abdominales suaves',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Puedes tumbarte en el suelo boca arriba, con los brazos extendidos a la par del cuerpo y las rodillas flexionadas. Sube el tronco suavemente y mantén la posición en un ángulo de 90º. Puedes hacer 5 repeticiones de 20 segundos.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-947/5-AdobeStock_201910289-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Forma una T con tu cuerpo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'El ejercicio consiste en intentar formar una T entre tus piernas, el tronco y tus brazos. Mantén recta la pierna izquierda y eleva hacia atrás la pierna derecha, en un movimiento acompasado inclina el tronco hacia adelante. Procura que la pierna elevada y el tronco formen una línea recta. Luego alterna con la otra pierna.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-948/6-AdobeStock_292125988-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Tijeras',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Este ejercicio ayuda a aliviar la tensión en la cintura y combate la retención de líquidos en las piernas. Túmbate boca arriba en la esterilla y eleva una de tus piernas hasta la altura de la cintura. Muy lentamente eleva el tronco, mantén 20 segundos y descansa. Repite con la otra pierna, alternandolas unas 6 veces cada una.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://images.hola.com/imagenes/estar-bien/20200227161673/ejercicios-aliviar-dolores-regla-lb/0-789-949/7-AdobeStock_301949135-a.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Pociòn inclinada',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Siéntate en el suelo con las piernas juntas y estiradas hacia adelante. Mantén el tronco erguido y luego inclinarlo hacia adelante. Los movimientos no deben provocar dolor o molestias físicas, recuerda hacerlo siempre de manera armoniosa y controlando cada miembro. ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
              options: CarouselOptions(
                height: 650.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
