import 'package:flutter/material.dart';
import 'package:rachid_application/widgets/primeira_pagina.dart';

class Configuracoes extends StatelessWidget {
  Configuracoes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: PrimeiraPagina(),
    );
  }
}
