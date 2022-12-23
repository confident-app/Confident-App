import 'package:confidentapp/screens/configuraciones/contacto_medico_pag.dart';
import 'package:confidentapp/screens/configuraciones/informe_pag.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Configurar extends StatelessWidget {
  const Configurar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones ⚙️'),
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
            padding: EdgeInsets.all(20),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[])),
                  const Text(
                    'Informe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 250, 250),
                    ),
                  ),
                  Divider(indent: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Divider(indent: 10),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const InformePag(),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Lottie.network(
                                        'https://assets6.lottiefiles.com/packages/lf20_h4th9ofg.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Contacto con el Mèdico',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 250, 250),
                    ),
                  ),
                  const Divider(indent: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        const Divider(indent: 10),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const MedicoPag(),
                                  ),
                                );
                              },
                              child: ClipOval(
                                child: SizedBox(
                                  height: 110,
                                  width: 110,
                                  child: Lottie.network(
                                      'https://assets9.lottiefiles.com/private_files/lf30_tul1qoqd.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                ]),
          ))),
    );
  }
}