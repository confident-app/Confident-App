import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:confidentapp/screens/detalles_periodo/pag_suenio.dart';
import 'package:confidentapp/widgets/fill_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:confidentapp/screens/detalles_periodo/pagtemperatura.dart';
import 'package:lottie/lottie.dart';

import 'detalles_periodo/pag_peso.dart';

class Informe extends StatefulWidget {
  const Informe({Key? key}) : super(key: key);
  @override
  State<Informe> createState() => _InformeState();
}

class _InformeState extends State<Informe> {
  bool isLoading = true;
  User? user = FirebaseAuth.instance.currentUser;

  Future<void> registrarAnimo(String animo) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'detallesPeriodo': {
          'temperatura': value['detallesPeriodo']['temperatura'],
          'horasSuenio': value['detallesPeriodo']['horasSuenio'],
          'pesoCorporal': value['detallesPeriodo']['pesoCorporal'],
          'animo': animo,
          'sintoma': value['detallesPeriodo']['sintoma'],
        },
      });
    });
  }

  Future<void> registrarSintoma(String sintoma) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'detallesPeriodo': {
          'temperatura': value['detallesPeriodo']['temperatura'],
          'horasSuenio': value['detallesPeriodo']['horasSuenio'],
          'pesoCorporal': value['detallesPeriodo']['pesoCorporal'],
          'animo': value['detallesPeriodo']['animo'],
          'sintoma': sintoma,
        },
      });
    });
  }

  var animos = [
    {
      'animo': 'Feliz',
      'urlGif': 'https://assets9.lottiefiles.com/packages/lf20_slimwle6.json',
    },
    {
      'animo': 'Enamorada',
      'urlGif': 'https://assets6.lottiefiles.com/packages/lf20_hru9amb4.json',
    },
    {
      'animo': 'Enojada',
      'urlGif': 'https://assets5.lottiefiles.com/packages/lf20_ffwoyvsy.json',
    },
    {
      'animo': 'Triste',
      'urlGif': 'https://assets7.lottiefiles.com/packages/lf20_fyqtse3p.json',
    },
    {
      'animo': 'Adolorida',
      'urlGif': 'https://assets7.lottiefiles.com/packages/lf20_kpm9o4dq.json',
    },
    {
      'animo': 'Normal',
      'urlGif': 'https://assets2.lottiefiles.com/packages/lf20_sgzw5ogf.json',
    },
    {
      'animo': 'Deprimida',
      'urlGif': 'https://assets7.lottiefiles.com/packages/lf20_hfnjm1i3.json',
    },
    {
      'animo': 'Bipolar',
      'urlGif': 'https://assets7.lottiefiles.com/packages/lf20_du90l2pa.json',
    },
  ];

  var sintomas = [
    {
      'sintoma': 'Acné',
      'urlGif': 'https://assets2.lottiefiles.com/private_files/lf30_docl0D.json',
    },
    {
      'sintoma': 'Nauseas',
      'urlGif': 'https://assets10.lottiefiles.com/packages/lf20_sp2a5b.json',
    },
    {
      'sintoma': 'Perdida de apetito',
      'urlGif': 'https://assets5.lottiefiles.com/packages/lf20_jw4wzkhu.json',
    },
    {
      'sintoma': 'Calor corporal',
      'urlGif': 'https://assets8.lottiefiles.com/packages/lf20_rsy4pd.json',
    },
    {
      'sintoma': 'Sin energía',
      'urlGif': 'https://assets9.lottiefiles.com/packages/lf20_fvybxiki.json',
    },
    {
      'sintoma': 'Relajada',
      'urlGif': 'https://assets9.lottiefiles.com/private_files/lf30_htijkvxe.json',
    },
  ];

  @override
  Widget build(BuildContext context) {
    print(animos);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del periodo'),
        backgroundColor: const Color.fromARGB(255, 123, 71, 213),
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
                                      builder: (context) => const SuenioPag(),
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
                                      builder: (context) => const PesoPag(),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: SizedBox(
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
                const Divider(indent: 1),
                
                /* --------------- Sintomas --------------- */
                const Text('ÀNIMO'),
                const Divider(indent: 1),
                GridView.builder(
                  primary: false,
                  padding: const EdgeInsets.only(top: 10, bottom: 0),
                  itemCount: animos.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),  
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatar(
                      radius: 10.0,
                      backgroundColor: const Color.fromARGB(255, 159, 238, 249),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              animos[index]['animo'].toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                    255, 233, 46, 46),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Guardar'),
                                onPressed: () async {
                                  await registrarAnimo(animos[index]['animo'].toString()).then((value) => Navigator.of(context).pop());
                                },
                              ),
                              OutlinedButton(
                                child: const Text('Cancelar'),
                                onPressed: () => Navigator.of(context).pop(),
                              )
                            ],
                          ));
                        },
                        child: ClipOval(
                          child: Lottie.network(animos[index]['urlGif'].toString()),
                        ),
                      ));
                  }
                ),

                /* --------------- Sintomas --------------- */
                const Divider(indent: 1),
                const Text('SINTOMAS'),
                const Divider(indent: 1),
                GridView.builder(
                  primary: false,
                  padding: const EdgeInsets.only(top: 10, bottom: 0),
                  itemCount: sintomas.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),  
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatar(
                      radius: 10.0,
                      backgroundColor: const Color.fromARGB(255, 159, 238, 249),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                sintomas[index]['sintoma'].toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(
                                      255, 233, 46, 46),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              actionsAlignment: MainAxisAlignment.center,
                              actions: <Widget>[
                                ElevatedButton(
                                  child: const Text('Guardar'),
                                  onPressed: () async {
                                    await registrarSintoma(sintomas[index]['sintoma'].toString()).then((value) => Navigator.of(context).pop());
                                  },
                                ),
                                OutlinedButton(
                                  child: const Text('Cancelar'),
                                  onPressed: () => Navigator.of(context).pop(),
                                )
                              ],
                            )
                          );
                        },
                        child: ClipOval(
                          child: Lottie.network(sintomas[index]['urlGif'].toString()),
                        ),
                      ));
                  }
                ),              
              ],
            ),
          ),
        )),
      ),
    );
  }
}
