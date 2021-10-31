import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  @override
  initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const ClipOval(
            child: Image(
              height: 150,
              image: AssetImage('assets/images/logo.jpeg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Adresse mail',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Champs requis';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Confirmation adresse mail',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Champs requis';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Mot de passe',
                icon: Icon(Icons.lock),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Champs requis';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                primary: const Color(0xff6A290F),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Valide',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
