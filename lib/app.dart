import 'package:anota_ped/repository/cadastrar.dart';
import 'package:anota_ped/repository/login.dart';
import 'package:anota_ped/views/add_cliente.dart';
import 'package:anota_ped/views/clientes_page.dart';
import 'package:anota_ped/views/edit_cliente.dart';
import 'package:anota_ped/views/edit_estoque.dart';
import 'package:anota_ped/views/estoque_page.dart';
import 'package:flutter/material.dart';
import 'package:anota_ped/views/home.dart';
import 'package:anota_ped/repository/menu.dart';

// @dart=2.9
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade700,
        fontFamily: '',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/cadastro': (context) => Cadastrar_user(),
        '/cliente': (context) => Cliente_page(),
        '/addcli': (context) => Add_cliente(),
        '/edtcli': (context) => Edit_cliente(),
        '/estoque': (context) => Estoque_page(),
        '/edtest': (context) => Edit_estoque(),
      },
      initialRoute: '/',
    );
  }
}
//barra de pesquisa

// decoration: BoxDecoration(
//                 //borderRadius: BorderRadius.vertical(bottom:Radius.circular(15)),
                // gradient: LinearGradient(
                //   colors: [Colors.blue.shade900, Colors.blue],
                //   begin: Alignment.bottomRight,
                //   end: Alignment.topLeft,
                // )
//               ),

 //Positioned(
                //   top: 100.0,
                //   left: 0.0,
                //   right: 0.0,
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 10.0),
                //     child: DecoratedBox(
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20.0),
                //           border: Border.all(
                //               color: Colors.grey.withOpacity(0.5), width: 1.0),
                //           color: Colors.white),
                //       child: Row(
                //         children: [
                //           IconButton(
                //             icon: Icon(
                //               Icons.menu,
                //               color: Colors.blue,
                //             ),
                //             onPressed: () {},
                //           ),
                //           Expanded(
                //             child: TextField(
                //               decoration: InputDecoration(
                //                 hintText: "Search",
                //               ),
                //             ),
                //           ),
                //           IconButton(
                //             icon: Icon(
                //               Icons.search,
                //               color: Colors.blue,
                //             ),
                //             onPressed: () {},
                //           ),
                //           IconButton(
                //             icon: Icon(
                //               Icons.notifications,
                //               color: Colors.blue,
                //             ),
                //             onPressed: () {},
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )