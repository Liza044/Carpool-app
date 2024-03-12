import 'package:flutter/material.dart';
import 'package:pr90/LogIn.dart';
import 'package:pr90/StartPage.dart';
import 'package:pr90/DSignUp.dart';
import 'package:pr90/PChat.dart';
import 'package:pr90/PAllR.dart';
import 'package:pr90/PSignUp.dart';
import 'package:pr90/PMap.dart';
import 'package:pr90/DMap.dart';
import 'package:pr90/DChat.dart';
import 'package:pr90/DAllR.dart';
import 'package:pr90/Payment.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DriversList.dart';
import 'WaitingD.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'StartPage',
      routes: {
        'LogIn': (context) {
          return const LogIn();
        },
        'StartPage': (context) {
          return const StartPage();
        },
        'DSignUp': (context) {
          return const DSignUp();
        },
        'PChat': (context) {
          return const PChat();
        },
        'PAllR': (context) {
          return const PAllR();
        },
        'PSignUp': (context) {
          return const PSignUp();
        },
        'PMap': (context) {
          return const PMap();
        },
        'DMap': (context) {
          return const DMap();
        },
        'DChat': (context) {
          return const DChat();
        },
        'DAllR': (context) {
          return const DAllR();
        },
        'Payment': (context) {
          return const Payment();
        },
        'DriversList': (context) {
          return const DriversList();
        },
        'WaitingD': (context) {
          return const WaitingD();
        },
      },
    );
  }
}

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}
