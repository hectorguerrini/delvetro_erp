import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste alterar cliente', () async {
    var cliente = ClienteModel(
        telefones: [],
        nome: 'Guerreiro',
        razaoSocial: 'Gay',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'sp',
        estado: 'estado',
        idCliente: 1,
        email: '');

    var repository = ClienteCadastroRepository();
    await repository.alterarCliente(cliente);
  });

  test('Teste salvar cliente', () async {
    var cliente = ClienteModel(
        telefones: [],
        nome: 'Guerreiro',
        razaoSocial: 'Gay',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'sp',
        estado: 'estado',
        idCliente: 3,
        email: '');

    var repository = ClienteCadastroRepository();
    await repository.salvarCliente(cliente);
  });
}
