import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PagTemas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (_) => ColorProvider(),
    // )
    return Scaffold(
      appBar: AppBar(
        title: Text('Temas'),
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
                  child: Column(children: <Widget>[
                    Container(),
                    Text(
                      'Escoja un tema',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment
                          .topCenter, //aligns CircleAvatar to Top Center.
                      child: CircleAvatar(
                        radius: 140, //radius is 50,

                        backgroundColor: Color.fromARGB(95, 238, 169, 238),

                        child: Text(
                            'Faltan diasfaltan \n días para tu próximo periodo',
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ])))),
    );
  }
}
