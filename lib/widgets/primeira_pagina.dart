import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  String nome = '';
  double valor1 = 0.0;
  double valor2 = 0.0;
  double? soma;
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Página'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  label: Text('Numero 1: '),
                  hintText: 'Informe um primeiro valor: '),
              onChanged: (String valor1) {
                if (valor1 != null) {
                  this.valor1 = double.parse(valor1.toString());
                }
              },
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text('Numero 2: '),
                  hintText: 'Informe um segundo valor: '),
              onChanged: (String valor2) {
                if (valor2 != null) {
                  this.valor2 = double.parse(valor2.toString());
                }
              },
            ),
            ElevatedButton(onPressed: myFirstFunction, child: const Text('Ok'))
          ],
        ),
      ),
    );
  }

  void myFirstFunction() {
    soma = valor1 + valor2;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Nome: '),
            content: Text('O resultado da soma é $soma', textScaleFactor: soma),
          );
        });
  }
}
// Tentar rodar o aplicativo, chamando este widget