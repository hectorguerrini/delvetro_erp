import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_externo_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/tipo_campo_texto_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_custom_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_servicos_controller.dart';

class CadastroServicosPage extends StatefulWidget {
  CadastroServicosPage({Key? key}) : super(key: key);

  @override
  _CadastroServicosPageState createState() => _CadastroServicosPageState();
}

class _CadastroServicosPageState
    extends ModularState<CadastroServicosPage, CadastroServicosController> {
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
                        'Cadastro de Serviços',
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
                        list: controller.getListaDescricao(),
                        isRequired: true,
                        onChanged: (value) {
                          controller.setDescricao(value);
                        },
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget(
                        flex: 1,
                        titulo: 'Tipo *',
                        items:
                            TipoServicoEnum.values.map((TipoServicoEnum value) {
                          return DropdownMenuItem<TipoServicoEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setTipoServicoEnum,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget(
                        flex: 1,
                        titulo: 'Externo *',
                        items:
                            TipoExternoEnum.values.map((TipoExternoEnum value) {
                          return DropdownMenuItem<TipoExternoEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setExterno,
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
                        flex: 1,
                        titulo: 'Prazo',
                        onChanged: controller.setPrazo,
                        value: controller.servicosEstoque.prazo,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget(
                        flex: 2,
                        titulo: 'Beneficiário *',
                        items:
                            UnidadeItemEnum.values.map((UnidadeItemEnum value) {
                          return DropdownMenuItem<UnidadeItemEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setUnidadeCusto,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DropDownFieldWidget(
                        flex: 2,
                        titulo: 'Unidade Cobrança *',
                        items:
                            UnidadeItemEnum.values.map((UnidadeItemEnum value) {
                          return DropdownMenuItem<UnidadeItemEnum>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        isRequired: true,
                        onChanged: controller.setUnidadeCusto,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextFormFieldCustomWidget(
                        tipoCampoTextoEnum: TipoCampoTextoEnum.VALOR,
                        flex: 1,
                        titulo: 'Custo *',
                        isNumber: true,
                        onChanged: (value) {
                          var valor = double.parse(value);
                          controller.setCusto(valor);
                        },
                        isRequired: true,
                        value: controller.servicosEstoque.custo.toString(),
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
                        titulo: 'Observação',
                        onChanged: controller.setObservacao,
                        value: controller.servicosEstoque.observacao,
                        flex: 3,
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
                            controller.salvarServico();
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
    );
  }
}
