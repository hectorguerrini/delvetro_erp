import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/shared/enumerate/tipo_campo_texto_enum.dart';
import 'package:delvetro_erp/app/shared/widgets/drop_down_field_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/elevated_button_padrao_widget.dart';
import 'package:delvetro_erp/app/shared/widgets/text_form_field_custom_widget.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cadastro de Clientes',
                        style: TextStyle(fontSize: 36),
                      ),
                      Text(
                        '* Campos Obrigatórios',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TypeAheadFieldWidget(
                          flex: 2,
                          list: controller.listaNomes,
                          value: controller.cliente.nome,
                          onChanged: controller.setNome,
                          onSuggestionSelected: (value) {
                            controller.selectNome(value);
                            setState(() {});
                          },
                          titulo: 'Nome *',
                          isRequired: true,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 2,
                          titulo: 'Razão Social *',
                          isRequired: true,
                          onChanged: controller.setRazaoSocial,
                          value: controller.cliente.razaoSocial,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 2,
                          titulo: 'CNPJ/CPF *',
                          isRequired: true,
                          onChanged: controller.setCpf,
                          value: controller.cliente.cpf,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextFormFieldCustomWidget(
                          flex: 2,
                          titulo: 'Email *',
                          isRequired: true,
                          onChanged: controller.setEmail,
                          value: controller.cliente.email,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Telefone 1 *',
                          isRequired: true,
                          isNumber: true,
                          tipoCampoTextoEnum: TipoCampoTextoEnum.NUMERO,
                          value: controller.cliente.telefones[0],
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Telefone 2',
                          isNumber: true,
                          tipoCampoTextoEnum: TipoCampoTextoEnum.NUMERO,
                          value: controller.cliente.telefones[1],
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Telefone 3',
                          isNumber: true,
                          tipoCampoTextoEnum: TipoCampoTextoEnum.NUMERO,
                          value: controller.cliente.telefones[2],
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
                          flex: 2,
                          titulo: 'Nome Contato *',
                          isRequired: true,
                          onChanged: controller.setNomeContato,
                          value: controller.cliente.nomeContato,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'RG Contato *',
                          isRequired: true,
                          onChanged: controller.setRgContato,
                          value: controller.cliente.rgContato,
                        ),
                        DropDownFieldWidget<LojistaEnum>(
                          flex: 2,
                          titulo: 'Lojista *',
                          items: LojistaEnum.values.map((LojistaEnum value) {
                            return DropdownMenuItem<LojistaEnum>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: controller.setLojista,
                          isRequired: true,
                          value: controller.cliente.lojista,
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
                          titulo: 'Cep *',
                          isRequired: true,
                          onChanged: controller.setCep,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 2,
                          titulo: 'Endereço *',
                          isRequired: true,
                          onChanged: controller.setEndereco,
                          value: controller.cliente.endereco,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Numero *',
                          isRequired: true,
                          isNumber: true,
                          onChanged: controller.setNumero,
                          tipoCampoTextoEnum: TipoCampoTextoEnum.NUMERO,
                          value: controller.cliente.numero,
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
                          titulo: 'Complemento',
                          onChanged: controller.setComplemento,
                          value: controller.cliente.complemento,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Bairro *',
                          isRequired: true,
                          onChanged: controller.setBairro,
                          value: controller.cliente.bairro,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Cidade *',
                          isRequired: true,
                          onChanged: controller.setCidade,
                          value: controller.cliente.cidade,
                        ),
                        TextFormFieldCustomWidget(
                          flex: 1,
                          titulo: 'Estado *',
                          isRequired: true,
                          onChanged: controller.setEstado,
                          value: controller.cliente.estado,
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
      ),
    );
  }
}
