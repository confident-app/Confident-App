import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/barra.dart';
import 'package:confidentapp/screens/homepage.dart';
import 'package:confidentapp/screens/reset_password.dart';
import 'package:lottie/lottie.dart';

import '../utils/authentication.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  void initState() {
    //ToDo: checkSignedIn
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        //
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

        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Center(
                  child: Lottie.network(
                    'https://assets9.lottiefiles.com/private_files/lf30_ohapmypv.json',
                    height: 250,
                  ),
                ),
                new Text(
                  'CONFIDENT',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(bottom: 0),
                  width: 250.0,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 1, 203, 230)),
                      ),
                      onPressed: () async {
                        await Authentication.iniciarSesion().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomePage())));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Continuar con Google',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black45),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250.0,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)))),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 250.0,
                  height: 50.0,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Contraseña",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResetPassword()));
                  },
                  child: Text(
                    'Olvidaste tu contraseña?',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 250.0,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(115, 135, 76, 246)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Iniciar sesion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
