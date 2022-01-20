import 'dart:ui';

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
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              padding: EdgeInsets.only(),
              height: 300,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blue],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: Image.asset("assets/teste_logo.png"),
                  ),
                ],
              )
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )
              ),
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}