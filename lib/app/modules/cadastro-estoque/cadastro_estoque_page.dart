import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_pequeno_widget.dart';
import 'package:flutter/material.dart';
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFieldPadraoWidget(
                          titulo: 'Descrição',
                          onChanged: controller.setDescricao,
                        ),
                        TextFormFieldPadraoWidget(
                          titulo: 'Localizacao',
                          onChanged: controller.setLocalizacao,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFieldPequenoWidget(
                          titulo: 'Quantidade',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setQuantidade(valor);
                          },
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Estoque Mínimo',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMinimo(valor);
                          },
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Estoque Máximo',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMaximo(valor);
                          },
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Custo',
                          onChanged: (value) {
                            var valor = double.parse(value);
                            controller.setCusto(valor);
                          },
                        ),
                      ],
                    ),
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
