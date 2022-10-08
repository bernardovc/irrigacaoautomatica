import 'package:flutter/material.dart';
import 'package:trabalhotcc/modules/dispositivos/pages/disp.dart';
import 'package:trabalhotcc/modules/dispositivos/pages/teste.dart';
import 'package:trabalhotcc/modules/monitorarGeral/pages/mon_geral.dart';

import '../modules/login/pages/loginPage.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROJECT MAIA',
      theme: ThemeData(
       
        primarySwatch:  Colors.teal,
      ),
      home: LoginPage(),
    );
  }
}