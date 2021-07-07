import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';
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
        lojista: LojistaEnum.Sim,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: null);
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
        lojista: LojistaEnum.Sim,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: 2);
    controller.cliente = clienteTeste;
    when(repository.alterarCliente(clienteTeste)).thenAnswer((_) async {});
    await controller.salvarCliente();
    verify(repository.alterarCliente(clienteTeste)).called(1);
  });
}
