import 'package:flutter/material.dart';
import 'login.dart';
import 'teammates.dart';
import 'inscription.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kaamelott",
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/second': (context) => TeammatesModel(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
