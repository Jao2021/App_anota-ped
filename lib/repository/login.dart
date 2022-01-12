import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300.0,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
          gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          )
        ),
      ),
    );
  }
}