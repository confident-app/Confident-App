import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class pagina_tips extends StatefulWidget {
  @override
  State<pagina_tips> createState() => _pagina_tipsState();
}

class _pagina_tipsState extends State<pagina_tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remedios Caseros'),
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
              height: 50,
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://cdn2.salud180.com/sites/default/files/styles/4x3_large/public/field/image/2020/05/razones_para_tomar_te_de_manzanilla_todos_los_dias.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Jengibre Y Manzanilla',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Estos ingredientes que har??n que te sientas much??simo mejor, pues tienen componentes que te ayudar??n a relajarte y a calmar las contracciones uterinas.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2019/05/hacer-te-de-oregano.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Manzanilla y Oregano',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Ayudar??n a evitar la inflamaci??n y har??n que los c??licos desaparezcan. Te recomendamos tomar esta bebida lo m??s caliente.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://estaeslahistoria.com/wp-content/uploads/2018/08/T%C3%A9-de-frambuesa-4.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Frambuesas',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Una infusi??n preparada con las hojas de esta fruta, ayudar??n a relajar los m??sculos y a evitar que retengas l??quidos Y calmar??s los dolores abdominales',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/tomar-te-de-hierbabuena-yebabuena.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'T?? Hierbabuena',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Solo debes poner unas hojitas en agua hirviendo y d??jalas reposar por un rato, te ayudar?? a aliviar los c??licos menstruales, sino tambi??n los dolores de espalda.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/images/2020/10/beneficios-de-tomar-te-de-canela.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'T?? Canela',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Unas ramitas de este ingrediente en agua caliente te ayudar??n a sentirte mucho mejor durante esos d??as, pues tienen propiedades anti inflamatorias que te har??n sentir much??simo mejor.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://estaeslahistoria.com/wp-content/uploads/2018/08/T%C3%A9-de-frambuesa-4.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Frambuesas',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Una infusi??n preparada con las hojas de esta fruta, ayudar??n a relajar los m??sculos y a evitar que retengas l??quidos Y calmar??s los dolores abdominales',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/tomar-te-de-hierbabuena-yebabuena.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'T?? Hierbabuena',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Solo debes poner unas hojitas en agua hirviendo y d??jalas reposar por un rato, te ayudar?? a aliviar los c??licos menstruales, sino tambi??n los dolores de espalda.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/images/2020/10/beneficios-de-tomar-te-de-canela.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'T?? Canela',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Unas ramitas de este ingrediente en agua caliente te ayudar??n a sentirte mucho mejor durante esos d??as, pues tienen propiedades anti inflamatorias que te har??n sentir much??simo mejor.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.salud180.com/sites/default/files/styles/4x3_large/public/field/image/2020/05/razones_para_tomar_te_de_manzanilla_todos_los_dias.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Jengibre Y Manzanilla',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Estos ingredientes que har??n que te sientas much??simo mejor, pues tienen componentes que te ayudar??n a relajarte y a calmar las contracciones uterinas.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                      'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2019/05/hacer-te-de-oregano.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Colors.white.withOpacity(0.6),
                            child: Text(
                              'Manzanilla y Oregano',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.white.withOpacity(0.6),
                        child: Text(
                          'Ayudar??n a evitar la inflamaci??n y har??n que los c??licos desaparezcan. Te recomendamos tomar esta bebida lo m??s caliente.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
              options: CarouselOptions(
                height: 300.0,
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
