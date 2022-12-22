import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'pantallacirculo.dart';

class mascota extends StatefulWidget {
  const mascota({Key? key}) : super(key: key);
  @override
  _mascotaState createState() => _mascotaState();
}

class _mascotaState extends State<mascota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Escoja su mascota'),
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
          child: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  new Text('ESCOGE TU MASCOTA'),
                  Divider(indent: 1),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 2.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) {
                                //         return pantallacirculo(_mascotaState());
                                //       },
                                //     ),
                                //   );
                                // },
                                child: new SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Lottie.network(
                                      'https://assets1.lottiefiles.com/packages/lf20_4fewfamh.json',
                                      height: 140),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            child: CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,
                                child: InkWell(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //       builder: (context) => PesoPag(),
                                  //     ),
                                  //   );
                                  // },
                                  child: ClipOval(
                                    child: new SizedBox(
                                      height: 65,
                                      width: 65,
                                      child: Lottie.network(
                                          'https://assets1.lottiefiles.com/private_files/lf30_lhyi1kz7.json'),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => TemperaturaPag(),
                                //     ),
                                //   );
                                // },
                                child: new SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Lottie.network(
                                      'https://assets1.lottiefiles.com/packages/lf20_lc46h4dr.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => TemperaturaPag(),
                                //     ),
                                //   );
                                // },
                                child: new SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Lottie.network(
                                      'https://assets1.lottiefiles.com/packages/lf20_OT15QW.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => TemperaturaPag(),
                                //     ),
                                //   );
                                // },
                                child: new SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Lottie.network(
                                      'https://assets1.lottiefiles.com/packages/lf20_s4tubmwg.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          )),
    );
  }
}
