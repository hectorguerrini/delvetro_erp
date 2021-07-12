import 'package:flutter/material.dart';

class CadastroClientePage extends StatefulWidget {
  final String title;
  const CadastroClientePage({Key? key, this.title = 'CadastroClientePage'})
      : super(key: key);
  @override
  CadastroClientePageState createState() => CadastroClientePageState();
}

class CadastroClientePageState extends State<CadastroClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 7,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Cadastro de Clientes',
                      style: TextStyle(fontSize: 36),
                    ),
                    Text(
                      '* Campos Obrigatórios',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: <Widget>[],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
