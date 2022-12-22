import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/pagina_ejercicios.dart';
import 'package:confidentapp/screens/pagina_tips.dart';

import 'package:lottie/lottie.dart';

void main(List<String> args) {}

class tips extends StatefulWidget {
  @override
  _tipsState createState() => _tipsState();
}

class _tipsState extends State<tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Tips'),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
      ),
      backgroundColor: Color.fromARGB(255, 240, 186, 204),
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
          child: SingleChildScrollView(
              child: SafeArea(
                  child: Container(
            padding: EdgeInsets.all(25.25),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Remedios Caseros',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 250, 250),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(indent: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => pagina_tips(),
                                  ),
                                );
                              },
                              child: ClipOval(
                                child: new SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Lottie.network(
                                      'https://assets7.lottiefiles.com/packages/lf20_ce1gexuv.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    'Ejercicios',
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => pagina_ejercicios(),
                                  ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Lottie.network(
                                        'https://assets1.lottiefiles.com/packages/lf20_6tqzumqa.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    'Medicamentos',
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => paginamedicamentos(),
                                  ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Lottie.network(
                                        'https://assets10.lottiefiles.com/private_files/lf30_brec9S.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    'Anticonceptivos',
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        paginaanticonceptivos(),
                                  ));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 110,
                                    width: 110,
                                    child: Lottie.network(
                                        'https://assets6.lottiefiles.com/packages/lf20_ufkxi0ll.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    'Informaciòn sobre el periodo',
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
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => paginainfperiodo(),
                                ));
                              },
                              child: ClipOval(
                                child: new SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Lottie.network(
                                      'https://assets7.lottiefiles.com/packages/lf20_yiicyfsz.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                ]),
          )))),
    );
  }
}

//-----------------------PAGINA MEDICAMENTOS --------------------------
class paginamedicamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Medicamentos'),
          backgroundColor: Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Color.fromARGB(255, 240, 186, 204),
        body: Center(
            child: Container(
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
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.pharmacys.com.ec/wcsstore/DF_CatalogAsset/images/catalog/producto/fullimage/13454P-1.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 28, 25, 30),
              title: Text(
                'FEMEN',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Femen Forte es un analgésico indicado para aliviar el dolor premenstrual y menstrual. ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.laboratoriochile.cl/wp-content/uploads/2015/11/Paracetamol_500MG_16C_BE_HD.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 15, 25, 20),
              title: Text(
                'PARACETAMOL',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Se utiliza para reducir la fiebre y aliviar los dolores menores por de cefalea, dolor muscular, artritis, periodos menstruales, resfriado común, dolor de muelas y dolor de espalda.',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://xanafiz.com/wp-content/uploads/2020/10/172.-Ibuprofeno-400-Genfar.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 30, 25, 20),
              title: Text(
                'IBUPROFENO',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Se utiliza para aliviar el dolor de leve o moderado, incluido el dolor menstrual dolor que se produce antes o durante el periodo menstrual. ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://quefarmacia.com/wp-content/uploads/2017/03/Diclofenaco.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 20, 25, 20),
              title: Text(
                'DICLOFENACO',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Se utiliza para tratar el dolor y la inflamación, diclofenaco se utiliza para tratar las siguientes afecciones, enfermedades reumáticas inflamatorias crónicas, dolores menstruales, inflamación postraumática.',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ]),
        )));
  }
}

//---------------------PAGINA ANTICONCEPTIVOS --------------
class paginaanticonceptivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anticonceptivos'),
          backgroundColor: Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Color.fromARGB(255, 240, 186, 204),
        body: Center(
            child: Container(
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
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 70, 30, 10),
              title: Text(
                'CONDÒN MASCULINO Y CONDÒN FEMENINO',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Los condones impiden el paso del semen y el encuentro del òvulo y el espermatozoide. ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.your-life.com/sites/g/files/vrxlpx28791/files/2020-02/malecondom1.png'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 30, 30, 10),
              subtitle: Text(
                'Brinda doblo proteccion. Previene embarasos no deseados. Protege de infecciones de transmisiòn sexual',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.drugs.com/cg_esp/images/es-es13312905.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.gomezroig.com/wp-content/uploads/2020/10/efecto-pastillas-anticonceptivas-768x511.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 10),
              title: Text(
                'PASTILLAS ANTICONCEPTIVAS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Es un metodo anticonceptivo temporal es un tipo de medicamento con hormonas que evita la ovulaciòn',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'INYECCIÒN CICLOFEM',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Es un anticonceptivo inyectable de alta eficacia, que brinda tranquilidad para el disfrute de una sexualidad plena. ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://quefarmacia.com/wp-content/uploads/2018/06/cyclofemina.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://farmaclub.com.co/wp-content/uploads/2021/03/CYCLOFEMINA-X-1-AMPOLLA.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'INYECCIÒN CICLOFEMINA',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Es un anticonceptivo inyectable de alta eficacia conteniendo la hormona progestina, la cual evita que quedes en embarazo al prevenir la ovulación.',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'IMPLANTE JADELLE',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                '2 varillas que contienen levonorgestrel; es muy efectivo durante 5 años. ',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.reproduccionasistida.org/wp-content//localizacion-implante-anticonceptivo.png'),
                      height: 150,
                    ),
                  ),
                )),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://medlineplus.gov/spanish/ency/images/ency/fullsize/7193.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'LIGADURA DE TROMPAS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Es un metodo permanente para mujeres que no desean tener mas hijos. Procedimiento quirùrgico',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'VASECTOMÌA',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Es un metodo permanente para hombres que no desean tener mas hijos. Procedimiento quirùrgico',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/08/26/10/23/my00483_im03711_m7_vasectomy2thu_jpg'),
                      height: 150,
                    ),
                  ),
                )),
            CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://moltomedical.vtexassets.com/arquivos/ids/157284-800-auto?v=637780305160000000&width=800&height=auto&aspect=true'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 30, 20),
              title: Text(
                'DIAPOSITIVO ULTRA UTERINO',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                'Dispositivo pequeño en forma de T cubierto de cobre, tiene dos brazos flexibles, evita el encuentro entre el ovulo y el espermatozoide',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ]),
        )));
  }
}

//--------------------PAGINA DE INFORMACION periodo------------------

class paginainfperiodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Información'),
          backgroundColor: Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Color.fromARGB(255, 240, 186, 204),
        body: Center(
          child: Container(
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
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                new Text(
                  'ANORMAL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 251, 250, 250),
                  ),
                  textAlign: TextAlign.center,
                ),
                Divider(indent: 10),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      Divider(indent: 1),
                      SizedBox(
                        height: 250.0,
                        width: 250.0,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => paginanonormal(),
                                ),
                              );
                            },
                            child: ClipOval(
                              child: new SizedBox(
                                height: 180,
                                width: 180,
                                child: Lottie.network(
                                    'https://assets9.lottiefiles.com/private_files/lf30_ipvphpwo.json'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])),
                SizedBox(
                  height: 30,
                ),
                new Text(
                  'NORMAL',
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
                        height: 250.0,
                        width: 250.0,
                        child: Container(
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => paginanormal(),
                                ));
                              },
                              child: ClipOval(
                                child: new SizedBox(
                                  height: 180,
                                  width: 180,
                                  child: Lottie.network(
                                      'https://assets9.lottiefiles.com/private_files/lf30_ipvphpwo.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])),
              ],
            ),
          ),
        ));
  }
}

//-----------DENTRO DE NORMAL----------------------
class paginanormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Normal'),
          backgroundColor: Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Color.fromARGB(255, 240, 186, 204),
        body: Center(
            child: Container(
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
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('\n \n¿Cuanto puede durar?'),
              subtitle: Text(
                  '\nEl flujo menstrual puede ocurrir cada 21 a 35 días y durar de 2 a 7 días'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://uvn-brightspot.s3.amazonaws.com/assets/vixes/m/menstruacao-atrasada-ciclo-menstrual-calendario-1018-1400x800.jpg'),
                      height: 200,
                      width: 200,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('\n Inicio periodo'),
              subtitle: Text(
                  '\n Durante los primeros años después del comienzo de la menstruación, los ciclos largos son comunes.'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/articulos/ciclo-menstrual_0.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('\n Regularidad'),
              subtitle: Text(
                  'Tu período puede ser ligero o pesado, doloroso o indoloro, largo o corto.'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.reproduccionasistida.org/wp-content//sintomas-patologia-coagulos-menstruales-670x285.png'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('\n Pildora'),
              subtitle: Text(
                  'El uso de píldoras anticonceptivas, alterará tu ciclo menstrual. Como el retrasar tus dìas de periodo (15 dias)'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.pmfarma.com.mx/noticias/noticias/14668/image/estro.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('\n Menopausia'),
              subtitle: Text(
                  'Tu ciclo podría volverse irregular de nuevo. Sin embargo, debido a que el riesgo de cáncer uterino aumenta a medida que uno envejece, se debe informar cualquier sangrado irregular a tu doctor'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.clinicasfertilidad.com/images/blog/1618478665808-como-reconocer-menopausia.jpg'),
                      height: 150,
                    ),
                  ),
                )),
          ]),
        )));
  }
}

//-----------------PAGINA NO NORMAL----------------------------
class paginanonormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anormal'),
          backgroundColor: Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Color.fromARGB(255, 240, 186, 204),
        body: Center(
            child: Container(
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
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Menstruación que dura más de 7 días'),
              subtitle: Text(
                  'Debe tener una duración entre 4 y 7 días, ya que seria un desajuste hormonal.Dicho desajuste hormonal puede ser provocado por medicamentos, quistes o fibromas uterinos. '),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://us.123rf.com/450wm/belchonock/belchonock1911/belchonock191106044/134236779-mujer-joven-sosteniendo-calendario-con-d%C3%ADas-marcados-del-ciclo-menstrual-aislado-en-blanco.jpg?ver=6'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Menstruación con mal olor'),
              subtitle: Text(
                  'Fíjate si la sangre tiene un olor muy potente, puede significar una infección causada por una bacteria, la cual requiere tratamiento de inmediato. '),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://uvn-brightspot.s3.amazonaws.com/assets/vixes/infeccao-vaginal-bacterias-0417-1400x800_0.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Fiebre, vómitos y dolores de cabeza intensos '),
              subtitle: Text(
                  'Tener dolores de cabeza es normal, pero si se intesifican acudir al doctor. Hay otros síntomas como la fiebre y los vómitos que pueden ser signos de un desequilibrio hormonal. '),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://saludconlupa.com/media/images/dolordecabezamujer_2686Mhj.2e16d0ba.fill-1800x945.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Sangrado entre períodos'),
              subtitle: Text(
                  'El sangrado leve en la mitad del ciclo puede ser un desequilibrio hormonal grave, pero, si por el contrario es abundante puede significar una  infección, un embarazo fallido u otra complicación.  '),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://sileu.com/wp-content/uploads/2019/07/regla-adelantada-700x500-1.jpg'),
                      height: 150,
                    ),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Períodos irregulares'),
              subtitle: Text(
                  'Un período normal entre 21 y 35 días, si se pasan esos límites puede ser indicios de desajustes hormonales o un síntoma alarmante del Síndrome de Ovario Poliquístico.'),
            ),
            CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://www.mdemujer.org/wp-content/uploads/2018/01/bigstock-188025316.jpg'),
                      height: 150,
                    ),
                  ),
                )),
          ]),
        )));
  }
}
