import 'package:flutter/material.dart';
import 'package:anota_ped/repository/carrosel.dart';
import 'package:anota_ped/repository/menu.dart';

int _currentIndex = 0;

List cardList = [Item1(), Item2(), Item3(), Item4()];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

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
              height: 250.0,
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
                padding:
                    EdgeInsets.only(top: 100, left: 0, right: 0, bottom: 0),
                child: ListView(
                  padding: EdgeInsets.only(top: 130, right: 50, left: 50),
                  children: <Widget>[
                    // CarouselSlider(
                    //   options: CarouselOptions(
                    //     height: 200.0,
                    //     autoPlay: true,
                    //     autoPlayInterval: Duration(seconds: 3),
                    //     autoPlayAnimationDuration: Duration(milliseconds: 800),
                    //     autoPlayCurve: Curves.fastOutSlowIn,
                    //     pauseAutoPlayOnTouch: true,
                    //     aspectRatio: 2.0,
                    //     onPageChanged: (index, reason) {
                    //       setState(() {
                    //         _currentIndex = index;
                    //       });
                    //     },
                    //     items: cardList.map((card) {
                    //       return Builder(builder: (BuildContext context) {
                    //         return Container(
                    //           height: MediaQuery.of(context).size.height * 0.30,
                    //           width: MediaQuery.of(context).size.width,
                    //           child: Card(
                    //             color: Colors.blueAccent,
                    //             child: card,
                    //           ),
                    //         );
                    //       });
                    //     }).toList(),
                    //   ),
                    // ),

                    Card(
                      elevation: 4,
                      margin: EdgeInsets.only(bottom: 30),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Grafico 1',
                              style: TextStyle(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("fdf"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                  ],
                ))
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
