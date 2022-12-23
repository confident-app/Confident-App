import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//--------------PAGINA CONTACTO MEDICO------------------------
class MedicoPag extends StatefulWidget {
  const MedicoPag({super.key});

  @override
  State<MedicoPag> createState() => _MedicoPagState();
}

class _MedicoPagState extends State<MedicoPag> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Contactate '),
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
            padding: EdgeInsets.all(30.0),
            child: SafeArea(
                child: Container(
              padding: EdgeInsets.all(25.25),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'Puedes contactarte con tu medico de confianza para màs informaciòn',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 45, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(indent: 10),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: <Widget>[
                          Divider(indent: 10),
                          SizedBox(
                            height: 220.0,
                            width: 220.0,
                            child: Container(
                              child: CircleAvatar(
                                radius: 90.0,
                                backgroundColor: Colors.white,
                                child: InkWell(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //       builder: (context) => TemperaturaPag(),
                                  //     ),
                                  //   );
                                  // },
                                  child: ClipOval(
                                    child: new SizedBox(
                                      height: 2000,
                                      width: 2020,
                                      child: Lottie.network(
                                          'https://assets10.lottiefiles.com/packages/lf20_l13zwx3i.json'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])),
                    SizedBox(
                      height: 15.0,
                    ),
                    new Text(
                      'Medico General',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 45, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    new Text(
                      'UPEC',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 45, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    new Text(
                      '06 2 224 079',
                    ),
                    new Text(
                      'enfermeria@upec.edu.ec',
                    ),
                    Divider(indent: 10),
                    new Text(
                      'Horarios',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 45, 10, 10),
                      ),
                    ),
                    new Text(
                      'Lunes - Viernes: 8:00 am - 18:00 pm',
                    ),
                    new Text(
                      'Sábado - Domingo : Cerrado',
                    ),
                    // Divider(indent: 10),
                    // SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     child: Row(children: <Widget>[
                    //       Divider(indent: 1),
                    //       SizedBox(
                    //         height: 150.0,
                    //         width: 150.0,
                    //         child: Container(
                    //           child: CircleAvatar(
                    //             radius: 10.0,
                    //             backgroundColor: Colors.white,
                    //             child: InkWell(
                    //               // onTap: () {
                    //               //   Navigator.of(context).push(
                    //               //     MaterialPageRoute(
                    //               //       builder: (context) => TemperaturaPag(),
                    //               //     ),
                    //               //   );
                    //               // },
                    //               child: ClipOval(
                    //                 child: new SizedBox(
                    //                   height: 100,
                    //                   width: 100,
                    //                   child: Lottie.network(
                    //                       'https://assets9.lottiefiles.com/private_files/lf30_nsj5jdla.json'),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ])),
                    // new Text('Mèdicos'),
                    // new Text('Mèdicos'),
                    // Divider(indent: 20),
                    // SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     child: Row(children: <Widget>[
                    //       Divider(indent: 10),
                    //       SizedBox(
                    //         height: 150.0,
                    //         width: 150.0,
                    //         child: Container(
                    //           child: CircleAvatar(
                    //             radius: 20.0,
                    //             backgroundColor: Colors.white,
                    //             child: InkWell(
                    //               // onTap: () {
                    //               //   Navigator.of(context).push(
                    //               //     MaterialPageRoute(
                    //               //       builder: (context) => TemperaturaPag(),
                    //               //     ),
                    //               //   );
                    //               // },
                    //               child: ClipOval(
                    //                 child: new SizedBox(
                    //                   height: 180,
                    //                   width: 180,
                    //                   child: Lottie.network(
                    //                       'https://assets10.lottiefiles.com/packages/lf20_l13zwx3i.json'),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ])),
                  ]),
            ))));
  }
}
