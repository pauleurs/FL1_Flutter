import 'package:flutter/material.dart';
import 'login.dart';
import 'teammates.dart';
import 'inscription.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kaamelott",
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/second': (context) => const TeammatesModel(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
