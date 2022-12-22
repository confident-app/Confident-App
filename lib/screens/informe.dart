import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/widgets/fill_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:confidentapp/main.dart';
import 'package:confidentapp/screens/pagtemperatura.dart';
import 'package:lottie/lottie.dart';

void main(List<String> args) {}

class informe extends StatefulWidget {
  informe({Key? key}) : super(key: key);
  @override
  _informeState createState() => _informeState();
}

class _informeState extends State<informe> {
  TextEditingController controlleranimo = TextEditingController();
  String resultanimo = '0';

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference AnimoUsuarios =
      FirebaseFirestore.instance.collection('AnimoUsuarios');

  Future<void> aniadiranimo(
    String valorAnimo,
  ) {
    return AnimoUsuarios.add({
      'idUsuario': user?.uid,
      'valorAnimo': valorAnimo,
    });
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Detalles del periodo'),
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
          padding: EdgeInsets.all(25.25),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('ESTADO FÌSICO'),
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
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TemperaturaPag(),
                                  ),
                                );
                              },
                              child: new SizedBox(
                                height: 80,
                                width: 80,
                                child: Lottie.network(
                                    'https://assets2.lottiefiles.com/packages/lf20_GGbnvx.json'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SuenoPag(),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Lottie.network(
                                        'https://assets4.lottiefiles.com/private_files/lf30_re9xozpa.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PesoPag(),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 65,
                                    width: 65,
                                    child: Lottie.network(
                                        'https://assets3.lottiefiles.com/packages/lf20_nnhk6bw6.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(indent: 1),
                new Text('ÀNIMO'),
                Divider(indent: 1),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Feliz',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //   child: Text('Guardar'),
                                              //   onPressed: () async {
                                              //     setState(() {
                                              //       resultanimo =
                                              //           controlleranimo.text;
                                              //     });
                                              //     await aniadiranimo(
                                              //         resultanimo);
                                              //   },
                                              // ),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Lottie.network(
                                        'https://assets9.lottiefiles.com/packages/lf20_slimwle6.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Enamorada',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Lottie.network(
                                        'https://assets6.lottiefiles.com/packages/lf20_hru9amb4.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Enojado',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              FillButton(
                                                text: 'Guardar',
                                                onPressedFB: () {}
                                              ),
                                              FillButton(
                                                text: 'Cancelar',
                                                onPressedFB: () {
                                                  Navigator.of(context).pop();
                                                }
                                              ),
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 57,
                                    width: 57,
                                    child: Lottie.network(
                                        'https://assets5.lottiefiles.com/packages/lf20_ffwoyvsy.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Triste',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 55,
                                    width: 55,
                                    child: Lottie.network(
                                        'https://assets7.lottiefiles.com/packages/lf20_fyqtse3p.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(indent: 1),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Adolorida',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Lottie.network(
                                        'https://assets7.lottiefiles.com/packages/lf20_kpm9o4dq.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Normal',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 75,
                                    width: 75,
                                    child: Lottie.network(
                                        'https://assets2.lottiefiles.com/packages/lf20_sgzw5ogf.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Deprimida',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 75,
                                    width: 75,
                                    child: Lottie.network(
                                        'https://assets7.lottiefiles.com/packages/lf20_hfnjm1i3.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor:
                                  Color.fromARGB(255, 159, 238, 249),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Bipolar',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 75,
                                    width: 75,
                                    child: Lottie.network(
                                        'https://assets7.lottiefiles.com/packages/lf20_du90l2pa.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(indent: 1),
                new Text('SINTOMAS'),
                Divider(indent: 1),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Acnè',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Lottie.network(
                                        'https://assets2.lottiefiles.com/private_files/lf30_docl0D.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Nauseas',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 57,
                                    width: 57,
                                    child: Lottie.network(
                                        'https://assets10.lottiefiles.com/packages/lf20_sp2a5b.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Perdida de apetito',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Lottie.network(
                                        'https://assets5.lottiefiles.com/packages/lf20_jw4wzkhu.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Calor corporal',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_rsy4pd.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Sin  energia',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Lottie.network(
                                        'https://assets9.lottiefiles.com/packages/lf20_fvybxiki.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(indent: 1),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Container(
                          child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(
                                              'Relajada',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 233, 46, 46),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              // FlatButton(
                                              //     child: Text('Guardar'),
                                              //     onPressed: () {}),
                                              // FlatButton(
                                              //     child: Text('Cancelar'),
                                              //     onPressed: () {
                                              //       Navigator.of(context).pop();
                                              //     })
                                            ],
                                          ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 65,
                                    width: 65,
                                    child: Lottie.network(
                                        'https://assets9.lottiefiles.com/private_files/lf30_htijkvxe.json'),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
