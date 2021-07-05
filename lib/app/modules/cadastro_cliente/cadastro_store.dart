import 'dart:html';

import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/shared/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;

abstract class _CadastroStoreBase with Store {
  final ICadastroClienteRepository repository;
  @observable
  ClienteModel cliente = ClienteModel(
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
      idCliente: 1);

  _CadastroStoreBase(this.repository);

  @action
  Future<void> salvarItem() async {
    if (cliente.idCliente != null) {
      await repository.alterarCliente(cliente);
    } else {
      await repository.salvarCliente(cliente);
    }
  }
}
