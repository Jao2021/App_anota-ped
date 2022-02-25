import 'package:flutter/material.dart';
import 'package:anota_ped/repository/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Anota-ped",
          style: TextStyle(fontSize: 20),
        ),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Colors.blue, Colors.lightBlueAccent],
        //       begin: Alignment.bottomRight,
        //       end: Alignment.topLeft,
        //     )
        //   ),
        // ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      drawer: Menu_drawner(),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
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
                  "Bem Vindo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 250, left: 100),
              child: Text("conteudo"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade700,
        child: Icon(Icons.receipt_long_outlined),
        tooltip: 'Adicionar Pedido',
        onPressed: () {},
      ),
    );
  }
}
