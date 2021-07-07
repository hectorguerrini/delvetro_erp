import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroClienteController = _CadastroStoreBase
    with _$CadastroClienteStore;

abstract class _CadastroStoreBase with Store {
  final ICadastroClienteRepository repository;
  @observable
  ClienteModel cliente = ClienteModel(
      telefones: [],
      nome: '',
      razaoSocial: '',
      cpf: '',
      nomeContato: '',
      rgContato: '',
      lojista: null,
      cep: '',
      endereco: '',
      numero: '',
      complemento: '',
      bairro: '',
      cidade: '',
      estado: '',
      idCliente: null);

  _CadastroStoreBase(this.repository);

  @action
  Future<void> salvarCliente() async {
    if (cliente.idCliente != null) {
      await repository.alterarCliente(cliente);
    } else {
      await repository.salvarCliente(cliente);
    }
  }
}
