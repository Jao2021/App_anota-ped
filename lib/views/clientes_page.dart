import 'package:anota_ped/repository/menu.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "bdads",
    "doweir",
  ];
  final recentCities = [
    "bdads",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentCities : cities;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class Cliente_page extends StatefulWidget {
  const Cliente_page({Key? key}) : super(key: key);
  @override
  _Cliente_pageState createState() => _Cliente_pageState();
}

class _Cliente_pageState extends State<Cliente_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Anota-ped > Clientes",
          style: TextStyle(fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
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
                  "Clientes Cadastrados",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 140, left: 10, right: 10),
                child: ListView(children: <Widget>[
                  Container(
                      child: Card(
                          elevation: 5,
                          child: ListTile(
                            leading: Icon(
                              Icons.person_outline,
                              size: 35,
                            ),
                            title: Text("Nome", style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              "Telefone",
                              style: TextStyle(fontSize: 15),
                            ),
                            onTap: () {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text(
                                    'Dados do Cliente',
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
                                      Text("Nome:",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("Telefone:",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("Pedidos Feitos:",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 20),
                                      Row(
                                        children: <Widget>[
                                          TextButton(
                                            child: Text(
                                              "Voltar",
                                              style: TextStyle(
                                                color: Colors.blue.shade800,
                                                fontSize: 15,
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
                                Navigator.pushNamed(context, '/edtcli');
                              },
                            ),
                          )))
                ]))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade700,
        child: Icon(Icons.person_add_alt),
        tooltip: 'Adicionar Cliente',
        onPressed: () {
          Navigator.pushNamed(context, '/addcli');
        },
      ),
    );
  }
}
