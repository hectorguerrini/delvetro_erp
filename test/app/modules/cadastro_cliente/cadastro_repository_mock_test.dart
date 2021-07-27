import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CadastroClienteRepository cadastroClienteRepository;
  var clienteAdicional = ClienteModel(
      telefones: [],
      nome: 'Guerreiro',
      razaoSocial: 'teste',
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
      idCliente: 10,
      email: '');
  setUpAll(() {
    cadastroClienteRepository = CadastroClienteRepository();
  });

  test('[TEST] - getListaClientes', () async {
    expect(cadastroClienteRepository.listaClientes.isNotEmpty, true);
  });

  test('[TEST] - salvarItem', () async {
    await cadastroClienteRepository.salvarCliente(clienteAdicional);
    var teste = cadastroClienteRepository.listaClientes
        .where((element) => element == clienteAdicional)
        .isNotEmpty;
    expect(teste, true);
  });

  test('[TEST] - atualizarItem', () async {
    var clienteMock = ClienteModel(
        telefones: [],
        nome: 'Darth',
        razaoSocial: 'teste2',
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
    await cadastroClienteRepository.atualizarCliente(clienteMock);
    var value = cadastroClienteRepository.listaClientes
        .where((element) => element.idCliente == clienteMock.idCliente)
        .single;
    expect(value.nome, 'Darth');
  });
}
