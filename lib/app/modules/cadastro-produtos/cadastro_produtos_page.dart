import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/tipo_campo_texto_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/row_editavel_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/row_estatica_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_custom_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:flutter/material.dart';

class CadastroProdutosPage extends StatefulWidget {
  const CadastroProdutosPage({Key? key}) : super(key: key);
  @override
  CadastroProdutosPageState createState() => CadastroProdutosPageState();
}

class CadastroProdutosPageState
    extends ModularState<CadastroProdutosPage, CadastroProdutosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
          height: MediaQuery.of(context).size.height * 0.7,
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
                        'Cadastro de Produtos',
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
                          flex: 2,
                          titulo: 'Descricao *',
                          value: controller.produtosEstoque.descricao,
                          onSuggestionSelected: (value) {
                            controller.selectProduto(value);
                            setState(() {});
                          },
                          isRequired: true,
                          onChanged: controller.setDescricao,
                          list: controller.listaDescricao),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget<TipoItemEnum>(
                        flex: 1,
                        titulo: 'Tipo *',
                        value: controller.produtosEstoque.tipoItem,
                        items: TipoItemEnum.values.map((TipoItemEnum value) {
                          return DropdownMenuItem<TipoItemEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setTipoItem,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget<UnidadeItemEnum>(
                        flex: 1,
                        titulo: 'Unidade *',
                        value: controller.produtosEstoque.unidadeItem,
                        items:
                            UnidadeItemEnum.values.map((UnidadeItemEnum value) {
                          return DropdownMenuItem<UnidadeItemEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setUnidadeItem,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextFormFieldCustomWidget(
                        titulo: 'Preço Unitário *',
                        flex: 1,
                        tipoCampoTextoEnum: TipoCampoTextoEnum.VALOR,
                        isNumber: true,
                        onChanged: (value) {
                          var valor = double.tryParse(value);
                          controller.setPrecoUnitario(valor ?? 0);
                        },
                        isRequired: true,
                        value: controller.produtosEstoque.custo.toString(),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Composição',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 1))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Tipo',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Descrição',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Quantidade',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Custo',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 278,
                  child: Observer(builder: (_) {
                    return ListView.builder(
                        itemCount:
                            controller.produtosEstoque.listaComposicao.length +
                                1,
                        itemBuilder: (context, index) => Container(
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 1))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: index ==
                                          controller.produtosEstoque
                                              .listaComposicao.length
                                      ? RowEditavelWidget(
                                          custo: controller
                                              .listagemComposicaoEstoque.custo,
                                          quantidade: controller
                                              .listagemComposicaoEstoque
                                              .quantidade,
                                          tipoComposicaoEnum: controller
                                              .listagemComposicaoEstoque
                                              .tipoComposicao,
                                          onChangedTipoComposicao:
                                              controller.setTipoComposicao,
                                          descricao: controller
                                              .listagemComposicaoEstoque
                                              .descricao,
                                          onChangedDescricao:
                                              controller.setDescricaoComposicao,
                                          listDescricao:
                                              controller.listaServicos,
                                          addRow: () {
                                            controller.adicionarComposicao();
                                            setState(() {});
                                          },
                                          onSuggestionSelected: (value) {
                                            controller.selectComposicao(value);
                                            setState(() {});
                                          },
                                        )
                                      : RowEstaticaWidget(
                                          custo: controller.produtosEstoque
                                              .listaComposicao[index].custo!,
                                          descricao: controller.produtosEstoque
                                              .listaComposicao[index].descricao,
                                          tipoComposicao: controller
                                              .produtosEstoque
                                              .listaComposicao[index]
                                              .tipoComposicao,
                                          quantidade: controller
                                              .produtosEstoque
                                              .listaComposicao[index]
                                              .quantidade,
                                          removeRow: () {
                                            controller.removerComposicao(index);
                                            setState(() {});
                                          },
                                        ),
                                ),
                              ),
                            ));
                  }),
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
                          onPressed: () async {
                            await controller.salvarProduto();
                            setState(() {});
                          },
                        ),
                      ),
                      ElevatedButtonPadraoWidget(
                        icon: Icons.replay_outlined,
                        titulo: 'Limpar',
                        onPressed: () {
                          controller.limparTexto();
                          setState(() {});
                        },
                      ),
                      Spacer(),
                      Observer(builder: (_) {
                        return Text(
                          'Total: ',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        );
                      })
                    ],
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
