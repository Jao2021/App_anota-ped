import 'package:flutter/material.dart';

class Menu_drawner extends StatefulWidget {
  const Menu_drawner({ Key? key }) : super(key: key);

  @override
  _Menu_drawnerState createState() => _Menu_drawnerState();
}

class _Menu_drawnerState extends State<Menu_drawner> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('exemplo'),
            accountEmail: Text('exemplo@.com'),
            currentAccountPicture: CircleAvatar(
              child: Text("NF", style: TextStyle(fontSize: 20),),
                backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {Navigator.pushNamed(context, '/home');},
          ),
          //Divider(),
          ExpansionTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('Opçoes'),
            //subtitle: Text('escolha'),
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 25),
                leading: Icon(Icons.home),
                title: Text('Op1',style: TextStyle(fontSize: 11),),
                onTap: () => null,
              )
            ],
          ),
          //  Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => null,
          ),
          //Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => null,
          ),
        ]
      ),
      
    );
  }
}