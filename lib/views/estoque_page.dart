import 'package:anota_ped/repository/menu.dart';
import 'package:flutter/material.dart';

class Estoque_page extends StatefulWidget {
  const Estoque_page({Key? key}) : super(key: key);

  @override
  State<Estoque_page> createState() => _Estoque_pageState();
}

class _Estoque_pageState extends State<Estoque_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
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
                    "Produtos Cadastrados",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 130, left: 15, right: 15),
                  child: ListView(children: <Widget>[
                    Container(
                        child: Card(
                            elevation: 3,
                            child: ListTile(
                              leading: Icon(
                                Icons.inventory_2_outlined,
                                size: 35,
                              ),
                              title:
                                  Text("Nome", style: TextStyle(fontSize: 20)),
                              subtitle: Text(
                                "Preço",
                                style: TextStyle(fontSize: 15),
                              ),
                              onTap: () {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: Text(
                                      'Nome',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    content: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("Preço:",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 10),
                                        Text("Quantidade em estoque:",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 10),
                                        Text("Numero de vendas:",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 20),
                                        Row(
                                          children: <Widget>[
                                            TextButton(
                                              child: Text(
                                                "Deletar",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            SizedBox(width: 110),
                                            TextButton(
                                              child: Text(
                                                "Voltar",
                                                style: TextStyle(
                                                  color: Colors.blue.shade800,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              trailing: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/edtest');
                                },
                              ),
                            )))
                  ]))
            ],
          ),
        ));
  }
}
