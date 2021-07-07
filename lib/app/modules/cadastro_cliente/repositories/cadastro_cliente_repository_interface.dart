import 'package:delvetro_erp/app/shared/models/cliente_models.dart';

abstract class ICadastroClienteRepository {
  Future<void> salvarCliente(ClienteModel cliente);
  Future<void> alterarCliente(ClienteModel cliente);
}
