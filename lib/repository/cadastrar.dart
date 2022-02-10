import 'package:flutter/material.dart';

class Cadastrar_user extends StatefulWidget {
  const Cadastrar_user({ Key? key }) : super(key: key);

  @override
  _Cadastrar_userState createState() => _Cadastrar_userState();
}

class _Cadastrar_userState extends State<Cadastrar_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/wallpaper-azul.jpg",
              width: double.maxFinite,
              height: 274,
            ),
            Positioned(
              top: 150,
              left: 30,
              child: Text("Cadastrar-se",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),

            Positioned(
              top: 200,
              child:  Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal:30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
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
                      padding: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText:"E-mail",
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
                      padding: EdgeInsets.only(top: 20, bottom: 80),
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
                      width: double.maxFinite,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue.shade900],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(32))
                      ),
                      child: TextButton(
                        child: Text("Cadastrar", style: TextStyle(fontSize: 16, color: Colors.white),),
                        onPressed: () {Navigator.pushNamed(context, '/home');},
                      ),
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child:TextButton(
                        child: Text("Fazer Login"),
                        onPressed:() {Navigator.pushNamed(context, '/');}
                      )
                    )

                  ],
                ),
                
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}