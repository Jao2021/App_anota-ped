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
        padding: EdgeInsets.only(
          top: 60,
          right: 30,
          left: 30,
        ),
        child: ListView( 
          children:<Widget> [
            SizedBox(
              width: 138,
              height: 138,
              child: Image.asset("assets/icone_azul.jpg"),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 70,),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText:"Nome",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText:"Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Esqueci minha senha",),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 70,),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue.shade900],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(32)
                )
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text("Login", style: TextStyle(fontSize: 18, color: Colors.white),),
                  onPressed: () {Navigator.pushNamed(context, '/home');},
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: TextButton(
                child: Text("Cadastre-se"),
                onPressed: () {Navigator.pushNamed(context, '/cadastro');},
              ),
            ) 
          ],
        ),     
      )
    );
  }
}