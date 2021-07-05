import 'package:delvetro_erp/app/shared/models/cliente_models.dart';

abstract class ICadastroClienteRepository {
  Future<ClienteModel> salvarCliente(ClienteModel cliente);
}
