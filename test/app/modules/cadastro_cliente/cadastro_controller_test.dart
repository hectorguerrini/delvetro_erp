import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'cadastro_controller_test.mocks.dart';

@GenerateMocks([ICadastroClienteRepository])
void main() {
  ICadastroClienteRepository repository = MockICadastroClienteRepository();
  var controller = CadastroClienteController(repository);

  test('[TEST] - Salvar Cliente (que não existe) ClienteID = Null', () async {
    var clienteTeste = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: null,
        email: '');
    controller.cliente = clienteTeste;
    when(repository.salvarCliente(clienteTeste)).thenAnswer((_) async {});
    await controller.salvarCliente();
    verify(repository.salvarCliente(clienteTeste)).called(1);
  });

  test('[TEST] - Salvar Cliente (que já existe)', () async {
    var clienteTeste = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: 2,
        email: '');
    controller.cliente = clienteTeste;
    when(repository.alterarCliente(clienteTeste)).thenAnswer((_) async {});
    await controller.salvarCliente();
    verify(repository.alterarCliente(clienteTeste)).called(1);
  });

  test('Limpar texto', () async {
    var clienteTeste = ClienteModel(
        telefones: [],
        nome: 'nome',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.SIM,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: 2,
        email: '');
    controller.cliente = clienteTeste;
    await controller.limparTexto();
    expect(controller.cliente.idCliente, null);
  });
}
