import 'package:flutter/material.dart';
import 'package:anota_ped/app.dart';
import 'package:postgres/postgres.dart';

Future<void> main() async {
  runApp(MyApp());
  var connection = PostgreSQLConnection(
    "ec2-18-209-169-66.compute-1.amazonaws.com",
    5432,
    "d773vu8gaj3dpe",
    username: "fxxhemlwnuygcf",
    password:
        "15031d41c5f4ccb635d1047eee8158f31a87e54a16c787326289bd83e5ced198",
    useSSL: true,
  );
  try {
    await connection.open();
    print("Connected");
  } catch (e) {
    print("error");
    print(e.toString());
  }
}
