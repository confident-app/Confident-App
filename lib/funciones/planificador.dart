// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:cron/cron.dart';


// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// import 'funciones_programadas.dart';

// class PlanificadorCron {
//   final cron = Cron();
  
//   static Future<void> ejecutarFuncionDiario() async {
//     PlanificadorCron().cron.schedule(Schedule.parse('0 * 1-31 1-12 *'), () async {
//       await FuncionesPlanificador.actualizarDatosPeriodo();
//     });
//   }

//   static void ejecutarCada10Segundos() {
//     PlanificadorCron().cron.schedule(Schedule.parse('* * * * *'), () async {
//       print(instanciaNuevoDia());
//       await AwesomeNotifications().createNotification(
//         content: NotificationContent(
//           id: 1,
//           channelKey: 'key1',
//           title:'Test de notificación',
//           body: 'Tiempo actual: ${DateTime.now().toString()}; Nuevo día: ${instanciaNuevoDia().toString()}',
//         )
//       );
//     });
//   }

//   static Future<void> ejecutarFuncionCadaDia() async {
//     int dia = instanciaNuevoDia().day;
//     int mes = instanciaNuevoDia().month;
//     int hora = instanciaNuevoDia().hour;
//     int minuto = instanciaNuevoDia().minute;
//     int segundo = instanciaNuevoDia().second;
//     PlanificadorCron().cron.schedule(
//       Schedule(
//         days: dia,
//         months: mes,
//         hours: hora,
//         minutes: minuto,
//         seconds: segundo,
//       ),
//       () async {
//         await AwesomeNotifications().createNotification(
//           content: NotificationContent(
//             id: 1,
//             channelKey: 'key1',
//             title:'Test de notificación',
//             body: 'Test de notificación diaria',
//           )
//         );
//       }
//     );
//   }

//   // static instanciaNuevoDia() {
//   static tz.TZDateTime instanciaNuevoDia() {
//     tz.initializeTimeZones();
//     final tz.TZDateTime tiempoActual = tz.TZDateTime.now(tz.local);
//     tz.TZDateTime fechaPrevista = tz.TZDateTime(tz.local, tiempoActual.year, tiempoActual.month, tiempoActual.day, 0);
//     if (fechaPrevista.isBefore(tiempoActual)) {
//       fechaPrevista = fechaPrevista.add(const Duration(days: 1));
//     }
//     return fechaPrevista;
//   }
// }