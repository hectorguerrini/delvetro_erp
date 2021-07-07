import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroEstoquePage extends StatefulWidget {
  const CadastroEstoquePage({Key? key}) : super(key: key);

  @override
  _CadastroEstoquePageState createState() => _CadastroEstoquePageState();
}

class _CadastroEstoquePageState
    extends ModularState<CadastroEstoquePage, CadastroEstoqueController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 7,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cadastro de Estoque',
                    style: TextStyle(fontSize: 36),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Observer(
                          builder: (BuildContext context) => TextFormField(
                            onChanged: (value) {
                              //atribuir para o cotroller.descricao
                            },
                            style: TextStyle(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Descrição',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 20),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
