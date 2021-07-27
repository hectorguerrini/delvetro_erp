import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';

abstract class ICadastroClienteRepository {
  Future<void> salvarCliente(ClienteModel cliente);
  Future<void> alterarCliente(ClienteModel cliente);
  Future<List<ClienteModel>> getListaClientes();
}
