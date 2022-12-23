import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:confidentapp/providers/mascota_provider.dart';
import 'package:confidentapp/providers/tabs_provider.dart';
import 'package:confidentapp/screens/calendarioregistro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/barra.dart';
import 'package:confidentapp/screens/signin.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MascotaProvider>(create: (_) => MascotaProvider()),
        ChangeNotifierProvider<TabsProvider>(create: (_) => TabsProvider()),
      ],
      builder: (context, _) {
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
      },
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MascotaProvider mascota = context.watch<MascotaProvider>();
    return Scaffold(
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
            return FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid).get(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var datosUsuario = snapshot.data!;
                  var mascotaUI = datosUsuario['preferenciasUI']['urlGif'];
                  // Future.delayed(Duration.zero,() {
                  // });
                  return const Barra();
                }
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0.0, 1.0),
                      colors: [
                        Color.fromARGB(255, 123, 71, 213),
                        Color.fromARGB(255, 159, 238, 249),
                        Color.fromARGB(255, 1, 203, 230)
                      ],
                      tileMode: TileMode.repeated
                    ),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                );
              }
            );
          } else {
            return const Signin();
          }
        }),
  );
  }
}
