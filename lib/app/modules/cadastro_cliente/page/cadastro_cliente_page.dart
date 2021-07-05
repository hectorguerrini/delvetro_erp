import 'package:flutter/material.dart';

class CadastroClientePage extends StatefulWidget {
  final String title;
  const CadastroClientePage({Key? key, this.title = 'CadastroClientePage'}) : super(key: key);
  @override
  CadastroClientePageState createState() => CadastroClientePageState();
}
class CadastroClientePageState extends State<CadastroClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}