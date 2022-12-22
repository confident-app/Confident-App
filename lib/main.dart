import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/barra.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:login_firebase/views/home_view.dart';
import 'package:confidentapp/screens/signin.dart';

import 'firebase_options.dart';
// import 'funciones/planificador.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /* --- Conexión base de datos --- */
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /* --- Notificaciones --- */
  await AwesomeNotifications().initialize(
      'resource://drawable/ic_launcher', // icon for your app notification
      [
        NotificationChannel(
            channelKey: 'key1',
            channelName: 'Proto Coders Point',
            channelDescription: "Notification example",
            defaultColor: const Color(0XFF9050DD),
            ledColor: Colors.white,
            playSound: true,
            enableLights: true,
            enableVibration: true)
      ]);

  // await PlanificadorCron.ejecutarFuncionDiario();
  // await PlanificadorCron.ejecutarFuncionCadaDia();
  // PlanificadorCron.ejecutarCada10Segundos();

  /* ---  --- */
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Confident',
      home: const MainView(),
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color.fromARGB(255, 123, 71, 213),
              secondary: const Color.fromARGB(255, 123, 71, 213),
            ),
      ),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Ha ocurrido un error :('),
                );
              } else if (snapshot.hasData) {
                return Barra();
              } else {
                return const Signin();
              }
            }),
      );
}
