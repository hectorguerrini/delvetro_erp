import 'package:flutter_modular/flutter_modular.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:flutter/material.dart';

class CadastroProdutosPage extends StatefulWidget {
  final String title;
  const CadastroProdutosPage({Key? key, this.title = 'CadastroProdutosPage'})
      : super(key: key);
  @override
  CadastroProdutosPageState createState() => CadastroProdutosPageState();
}

class CadastroProdutosPageState extends State<CadastroProdutosPage> {
  final CadastroProdutosController store = Modular.get();

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
