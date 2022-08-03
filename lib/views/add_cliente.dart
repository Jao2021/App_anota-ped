import 'package:flutter/material.dart';

class Add_cliente extends StatefulWidget {
  const Add_cliente({Key? key}) : super(key: key);

  @override
  _Add_clienteState createState() => _Add_clienteState();
}

class _Add_clienteState extends State<Add_cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Container(
          child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
              gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          child: Center(
            child: Text(
              "Cadastrar Cliente",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 160, left: 35, right: 35),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      )),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Telefone",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      )),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                height: 60,
                width: 10,
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: SizedBox(
                  child: TextButton(
                    child: Text(
                      "Salvar",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
