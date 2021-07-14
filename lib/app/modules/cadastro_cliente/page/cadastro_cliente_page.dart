import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_pequeno_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroClientePage extends StatefulWidget {
  CadastroClientePage({Key? key}) : super(key: key);
  @override
  CadastroClientePageState createState() => CadastroClientePageState();
}

class CadastroClientePageState
    extends ModularState<CadastroClientePage, CadastroClienteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            height: MediaQuery.of(context).size.height * .7,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TypeAheadFieldWidget(
                        list: controller.getListaNomeClientes(),
                        onChanged: (value) {
                          controller.setNome(value);
                        },
                        titulo: 'Nome *',
                        isRequired: true,
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'Razão Social *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setRazaoSocial(value);
                        },
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'CNPJ/CPF *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setCpf(value);
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextFormFieldPadraoWidget(
                        titulo: 'Email *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setEmail(value);
                        },
                      ),
                      TextFormFieldPequenoWidget(titulo: 'Telefone 1 *'),
                      TextFormFieldPequenoWidget(titulo: 'Telefone 2 '),
                      TextFormFieldPequenoWidget(titulo: 'Telefone 3 '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextFormFieldPadraoWidget(
                        titulo: 'Nome Contato *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setNomeContato(value);
                        },
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'RG Contato *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setRgContato(value);
                        },
                      ),
                      DropDownFieldWidget<LojistaEnum>(
                        titulo: 'Lojista *',
                        items:
                            LojistaEnum.values.map((LojistaEnum lojistaEnum) {
                          return DropdownMenuItem<LojistaEnum>(
                              value: lojistaEnum,
                              child: Text(lojistaEnum.name));
                        }).toList(),
                        onChanged: (value) {
                          controller.setLojista(value);
                        },
                      ),

                      // DropDownFieldWidget<LojistaEnum>(
                      //   titulo: 'Lojista *',
                      //   items: LojistaEnum.values.map((LojistaEnum lojistaENUM){return DropdownMenuItem<LojistaEnum>(value: lojistaENUM,
                      //   child: Text(),)})
                      //   onChanged: controller.setLojista,
                      //   isRequired: true,
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormFieldPadraoWidget(
                        titulo: 'Cep *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setCep(value);
                        },
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'Endereço *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setEnederco(value);
                        },
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'Numero *',
                        isRequired: true,
                        isNumber: true,
                        onChanged: (value) {
                          controller.setNumero(value);
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormFieldPadraoWidget(
                        titulo: 'Complemento',
                        isRequired: false,
                        onChanged: (value) {
                          controller.setComplemento(value);
                        },
                      ),
                      TextFormFieldPadraoWidget(
                        titulo: 'Bairro *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setBairro(value);
                        },
                      ),
                      TextFormFieldPequenoWidget(
                        titulo: 'Cidade *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setCidade(value);
                        },
                      ),
                      TextFormFieldPequenoWidget(
                        titulo: 'Estado *',
                        isRequired: true,
                        onChanged: (value) {
                          controller.setEstado(value);
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButtonPadraoWidget(
                        icon: Icons.check,
                        titulo: 'Salvar',
                        onPressed: () {
                          controller.salvarCliente();
                        },
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ElevatedButtonPadraoWidget(
                        icon: Icons.sync,
                        titulo: 'Limpar',
                        onPressed: () {
                          controller.limparTexto();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
