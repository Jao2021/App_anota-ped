import 'package:anota_ped/repository/login.dart';
import 'package:flutter/material.dart';
import 'package:anota_ped/views/home.dart';
import 'package:anota_ped/repository/menu.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade700,
        fontFamily: '',
      ),
      debugShowCheckedModeBanner: false,  
      routes:{
        '/': (context) => Login(),
        '/home': (context) => Home(),
      },
      initialRoute: '/',    
    );
  }
}
//barra de pesquisa

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