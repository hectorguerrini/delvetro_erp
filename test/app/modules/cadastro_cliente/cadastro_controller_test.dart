import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/endereco_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/result_cep_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:delvetro_erp/app/shared/repositories/repository_external.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'cadastro_controller_test.mocks.dart';

@GenerateMocks([ICadastroClienteRepository, RepositoryExternal])
void main() {
  ICadastroClienteRepository repository = MockICadastroClienteRepository();
  RepositoryExternal externalRepository = MockRepositoryExternal();
  late CadastroClienteController cadastroClienteController;

  var mockClientes = [
    ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        enderecoModel: EnderecoModel(
            bairro: 'Vila Vermelha',
            cep: '04297000',
            cidade: 'São Paulo',
            complemento: '',
            endereco: 'teste',
            estado: 'SP',
            numero: null),
        idCliente: 10,
        email: '')
  ];

  var mockCep = ResultCepModel(
    bairro: 'Vila Vermelha',
    cep: '04297000',
    localidade: 'São Paulo',
    logradouro: 'Avenida Paulista',
    uf: '',
    numero: '',
    complemento: '',
  );

  setUpAll(() {
    when(repository.getListaClientes()).thenAnswer((_) async => mockClientes);
    when(externalRepository.getCepExterno(mockCep.cep))
        .thenAnswer((_) async => mockCep);
    cadastroClienteController =
        CadastroClienteController(repository, externalRepository);
  });

  test('[TEST] - procuraCep', () async {
    await cadastroClienteController.procuraCep(mockCep.cep);
    expect(
        cadastroClienteController.cliente.enderecoModel.bairro, mockCep.bairro);
  });

  test('[TEST] - get listaNomes', () {
    var mockListaItens = cadastroClienteController.listaNomes;
    expect(mockListaItens.isNotEmpty, true);
  });

  test('[TEST] - setNome', () {
    var teste = 'teste10';
    cadastroClienteController.setNome(teste);
    expect(cadastroClienteController.cliente.nome, teste);
  });

  test('[TEST] - setRazaoSocial', () {
    var teste = 'teste10';
    cadastroClienteController.setRazaoSocial(teste);
    expect(cadastroClienteController.cliente.razaoSocial, teste);
  });

  test('[TEST] - setCpf', () {
    var teste = 'teste10';
    cadastroClienteController.setCpf(teste);
    expect(cadastroClienteController.cliente.cpf, teste);
  });

  test('[TEST] - setEmail', () {
    var teste = 'teste10';
    cadastroClienteController.setEmail(teste);
    expect(cadastroClienteController.cliente.email, teste);
  });

  test('[TEST] - setNomeContato', () {
    var teste = 'teste10';
    cadastroClienteController.setNomeContato(teste);
    expect(cadastroClienteController.cliente.nomeContato, teste);
  });

  test('[TEST] - setRgContato', () {
    var teste = 'teste10';
    cadastroClienteController.setRgContato(teste);
    expect(cadastroClienteController.cliente.rgContato, teste);
  });

  test('[TEST] - setLojista', () {
    var teste = LojistaEnum.SIM;
    cadastroClienteController.setLojista(teste);
    expect(cadastroClienteController.cliente.lojista, teste);
  });

  test('[TEST] - setCep', () {
    var teste = 'teste10';
    cadastroClienteController.setCep(teste);
    expect(cadastroClienteController.enderecoCliente.cep, teste);
  });

  test('[TEST] - setEndereco', () {
    var teste = 'teste10';
    cadastroClienteController.setEndereco(teste);
    expect(cadastroClienteController.cliente.enderecoModel.endereco, teste);
  });

  test('[TEST] - setNumero', () async {
    await cadastroClienteController.procuraCep(mockCep.cep);
    var teste = '10';
    cadastroClienteController.setNumero(teste);
    expect(
        cadastroClienteController.cliente.enderecoModel.bairro, mockCep.bairro);
    expect(cadastroClienteController.cliente.enderecoModel.numero, teste);
  });

  test('[TEST] - setComplemento', () {});

  test('[TEST] - setBairro', () {
    var teste = 'teste10';
    cadastroClienteController.setBairro(teste);
    expect(cadastroClienteController.enderecoCliente.bairro, teste);
  });

  test('[TEST] - setCidade', () {
    var teste = 'teste10';
    cadastroClienteController.setCidade(teste);
    expect(cadastroClienteController.enderecoCliente.localidade, teste);
  });

  test('[TEST] - setEstado', () {
    var teste = 'teste10';
    cadastroClienteController.setEstado(teste);
    expect(cadastroClienteController.enderecoCliente.uf, teste);
  });

  test('[TEST] - getListaClientes', () {
    expect(cadastroClienteController.listaClientes, mockClientes);
  });

  test('[TEST] - salvarItem args idCliente diferente null', () async {
    var clienteAdicional = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        enderecoModel: EnderecoModel(
            bairro: 'Vila Vermelha',
            cep: '04297000',
            cidade: 'São Paulo',
            complemento: 'não',
            endereco: 'teste',
            estado: 'SP',
            numero: '400'),
        idCliente: 1,
        email: '');
    cadastroClienteController.cliente = clienteAdicional;
    when(repository.atualizarCliente(clienteAdicional))
        .thenAnswer((_) async {});
    await cadastroClienteController.salvarCliente();
    verify(repository.atualizarCliente(clienteAdicional)).called(1);
  });

  test('[TEST] - salvarItem args idCliente igual null', () async {
    var clienteAdicional = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        enderecoModel: EnderecoModel(
            bairro: 'Vila Vermelha',
            cep: '04297000',
            cidade: 'São Paulo',
            complemento: 'não',
            endereco: 'teste',
            estado: 'SP',
            numero: '400'),
        idCliente: null,
        email: '');
    cadastroClienteController.cliente = clienteAdicional;
    when(repository.salvarCliente(clienteAdicional)).thenAnswer((_) async {});
    await cadastroClienteController.salvarCliente();
    verify(repository.salvarCliente(clienteAdicional)).called(1);
  });

  test('[TEST] - limparTexto', () async {
    var clienteAdicional = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        enderecoModel: EnderecoModel(
            bairro: 'Vila Vermelha',
            cep: '04297000',
            cidade: 'São Paulo',
            complemento: 'não',
            endereco: 'teste',
            estado: 'SP',
            numero: '400'),
        idCliente: 1,
        email: '');
    cadastroClienteController.cliente = clienteAdicional;
    cadastroClienteController.limparTexto();
    expect(cadastroClienteController.cliente.nome, '');
    expect(cadastroClienteController.cliente.idCliente, null);
  });
}
