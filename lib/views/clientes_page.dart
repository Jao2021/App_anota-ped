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
    return[IconButton(onPressed: () {}, icon: Icon(Icons.clear))];
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
    final suggestionList = query.isEmpty?recentCities:cities;
    return ListView.builder(itemBuilder:(context, index)=>ListTile(
      leading: Icon(Icons.location_city),
      title: Text(suggestionList[index]),
    ),
    itemCount: suggestionList.length,
    ); 
  }
  
}

class Cliente_page extends StatefulWidget {
  const Cliente_page({ Key? key }) : super(key: key);
  @override
  _Cliente_pageState createState() => _Cliente_pageState();
}

class _Cliente_pageState extends State<Cliente_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Anota-ped > Clientes", style: TextStyle(fontSize: 20),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }, )
        ],
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(15))
        ),
      ),
      drawer: Menu_drawner(),
      
      body: Container(
        child: Stack(
          children : <Widget> [
            Container(
              padding: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
              //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )
              ),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: Text("Clientes Cadastrados",style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 250, left: 100),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    // UM CARD QUE QUANDO CLICA ABRE UM POP-UP COM MAIS INFORMAÇÕES
                    Card(
                      elevation: 10,
                      shadowColor: Colors.red,
                      
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
