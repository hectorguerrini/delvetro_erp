import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/categorais_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_custom_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
            height: MediaQuery.of(context).size.height * 0.5,
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
                          size: MediaQuery.of(context).size.width * 0.17,
                          items: TipoItemEnum.values.map((TipoItemEnum value) {
                            return DropdownMenuItem<TipoItemEnum>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          isRequired: true,
                          onChanged: controller.setTipoItem,
                        ),
                        DropDownFieldWidget(
                          size: MediaQuery.of(context).size.width * 0.20,
                          titulo: 'Categorias *',
                          isRequired: true,
                          items: CategoriasEstoqueEnum.values
                              .map((CategoriasEstoqueEnum value) {
                            return DropdownMenuItem<CategoriasEstoqueEnum>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: controller.setCategorias,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFieldCustomWidget(
                          titulo: 'Localizacao',
                          size: MediaQuery.of(context).size.width * 0.30,
                          onChanged: controller.setLocalizacao,
                          value: controller.itensEstoque.localizacao,
                        ),
                        TextFormFieldCustomWidget(
                          titulo: 'Estoque Mínimo *',
                          size: MediaQuery.of(context).size.width * 0.11,
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMinimo(valor);
                          },
                          isRequired: true,
                          isNumber: true,
                          value:
                              controller.itensEstoque.estoqueMinimo.toString(),
                        ),
                        TextFormFieldCustomWidget(
                          titulo: 'Estoque Máximo *',
                          size: MediaQuery.of(context).size.width * 0.11,
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setEstoqueMaximo(valor);
                          },
                          isRequired: true,
                          isNumber: true,
                          value:
                              controller.itensEstoque.estoqueMaximo.toString(),
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
                          size: MediaQuery.of(context).size.width * 0.17,
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
                        TextFormFieldCustomWidget(
                          titulo: 'Quantidade',
                          size: MediaQuery.of(context).size.width * 0.11,
                          onChanged: (value) {
                            var valor = int.parse(value);
                            controller.setQuantidade(valor);
                          },
                          isNumber: true,
                          value: controller.itensEstoque.quantidade.toString(),
                        ),
                        TextFormFieldCustomWidget(
                          titulo: 'Custo',
                          size: MediaQuery.of(context).size.width * 0.11,
                          maskFormatter: MaskTextInputFormatter(
                            mask: 'R\$ ######.##',
                            filter: {'#': RegExp(r'[0-9]')},
                          ),
                          onChanged: (value) {
                            var valor = double.parse(value);
                            controller.setCusto(valor);
                          },
                          value: controller.itensEstoque.custo.toString(),
                        ),
                        TextFormFieldCustomWidget(
                          titulo: 'Espessura',
                          size: MediaQuery.of(context).size.width * 0.11,
                          onChanged: (value) {
                            var valor = double.parse(value);
                            controller.setEspessura(valor);
                          },
                          isNumber: true,
                          value: controller.itensEstoque.espessura.toString(),
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
