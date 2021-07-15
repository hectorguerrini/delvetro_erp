import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_pequeno_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter/foundation.dart';
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cadastro de Estoque',
                          style: TextStyle(fontSize: 36),
                        ),
                        Text(
                          '* Campos obrigatórios',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TypeAheadFieldWidget(
                          titulo: 'Descricao *',
                          list: controller.getListaDescricao(),
                          isRequired: true,
                          onChanged: (value) {
                            controller.setDescricao(value);
                          },
                        ),
                        DropDownFieldWidget(
                          titulo: 'Tipo *',
                          items: TipoItemEnum.values.map((TipoItemEnum value) {
                            return DropdownMenuItem<TipoItemEnum>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          isRequired: true,
                          onChanged: controller.setTipoItem,
                        ),
                        TextFormFieldPadraoWidget(
                          titulo: 'Localizacao',
                          onChanged: controller.setLocalizacao,
                          value: controller.itensEstoque.localizacao,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropDownFieldWidget(
                          titulo: 'Unidade *',
                          isRequired: true,
                          items: UnidadeItemEnum.values
                              .map((UnidadeItemEnum value) {
                            return DropdownMenuItem<UnidadeItemEnum>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: controller.setUnidade,
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Quantidade',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setQuantidade(valor);
                          },
                          isNumber: true,
                          value: controller.itensEstoque.quantidade.toString(),
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Estoque Mínimo *',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMinimo(valor);
                          },
                          isRequired: true,
                          isNumber: true,
                          value:
                              controller.itensEstoque.estoqueMinimo.toString(),
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Estoque Máximo *',
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMaximo(valor);
                          },
                          isRequired: true,
                          isNumber: true,
                          value:
                              controller.itensEstoque.estoqueMaximo.toString(),
                        ),
                        TextFormFieldPequenoWidget(
                          titulo: 'Custo',
                          onChanged: (value) {
                            var valor = double.parse(value);
                            controller.setCusto(valor);
                          },
                          value: controller.itensEstoque.custo.toString(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: ElevatedButtonPadraoWidget(
                            icon: Icons.check,
                            titulo: 'Salvar',
                            onPressed: () {
                              controller.salvarItem();
                            },
                          ),
                        ),
                        ElevatedButtonPadraoWidget(
                          icon: Icons.replay_outlined,
                          titulo: 'Limpar',
                          onPressed: () {
                            controller.limparTexto();
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
