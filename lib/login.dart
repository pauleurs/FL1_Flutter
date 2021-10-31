import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  initState() {
    super.initState();
    read();
  }

  Future<void> read() async {
    print(kIsWeb);
    File('file.txt').readAsString().then((String contents) {
      print(contents);
    });
  }

  final _formKey = GlobalKey<FormState>();
  bool _isOk = true;
  var mail;
  var passworld;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(height: 20),
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
                      mail = value;
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
                      passworld = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 30, 20),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                    style: TextButton.styleFrom(
                      primary: Color(0xff9B3F1B),
                    ),
                    child: Text('Inscription'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: this._isOk
                      ? null
                      : const Text(
                          "Email ou mot de passe incorect",
                          style: TextStyle(color: Color(0xffEC6366)),
                        ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  primary: const Color(0xff6A290F),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (mail == "a" && passworld == "a") {
                      Navigator.pushReplacementNamed(context, '/second');
                    } else {
                      setState(() {
                        this._isOk = false;
                      });
                    }
                  }
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Se connecte',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
