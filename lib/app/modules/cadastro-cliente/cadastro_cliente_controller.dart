import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:delvetro_erp/app/shared/repositories/repository_external.dart';
import 'package:mobx/mobx.dart';

import 'models/result_cep_model.dart';

part 'cadastro_cliente_controller.g.dart';

class CadastroClienteController = _CadastroControllerBase
    with _$CadastroClienteController;

abstract class _CadastroControllerBase with Store {
  final ICadastroClienteRepository repository;
  final RepositoryExternal externalRepository;

  _CadastroControllerBase(this.repository, this.externalRepository) {
    getListaClientes();
  }

  @observable
  ClienteModel cliente = ClienteModel.newInstance();

  @observable
  ResultCepModel enderecoCliente = ResultCepModel.newInstance();

  @observable
  List<ClienteModel> listaClientes = [];

  @action
  Future<void> procuraCep(String cep) async {
    var enderecoCliente = await externalRepository.getCepExterno(cep);
    var endereco = cliente.enderecoModel;
    endereco = endereco.copyWith(
        bairro: enderecoCliente.bairro,
        cep: enderecoCliente.cep,
        cidade: enderecoCliente.localidade,
        endereco: enderecoCliente.logradouro,
        estado: enderecoCliente.uf);
    cliente = cliente.copyWith(enderecoModel: endereco);
  }

  @computed
  List<GenericFieldsModel> get listaNomes => listaClientes
      .map((e) => GenericFieldsModel(caption: e.nome, id: e.idCliente))
      .toList();

  @action
  void setNome(String nome) {
    cliente = cliente.copyWith(nome: nome);
  }

  @action
  void setRazaoSocial(String razaoSocial) {
    cliente = cliente.copyWith(razaoSocial: razaoSocial);
  }

  @action
  void setCpf(String cpf) {
    cliente = cliente.copyWith(cpf: cpf);
  }

  @action
  void setEmail(String email) {
    cliente = cliente.copyWith(email: email);
  }

  @action
  void setNomeContato(String nomeContato) {
    cliente = cliente.copyWith(nomeContato: nomeContato);
  }

  @action
  void setRgContato(String rgContato) {
    cliente = cliente.copyWith(rgContato: rgContato);
  }

  @action
  void setLojista(LojistaEnum? lojista) {
    cliente = cliente.copyWith(lojista: lojista);
  }

  @action
  void setCep(String cep) {
    enderecoCliente = enderecoCliente.copyWith(cep: cep);
  }

  @action
  void setEndereco(String endereco) {
    enderecoCliente = enderecoCliente.copyWith(logradouro: endereco);
  }

  @action
  void setNumero(String numero) {
    enderecoCliente = enderecoCliente.copyWith(numero: numero);
  }

  @action
  void setComplemento(String? complemento) {
    enderecoCliente = enderecoCliente.copyWith(complemento: complemento);
  }

  @action
  void setBairro(String bairro) {
    enderecoCliente = enderecoCliente.copyWith(bairro: bairro);
  }

  @action
  void setCidade(String cidade) {
    enderecoCliente = enderecoCliente.copyWith(localidade: cidade);
  }

  @action
  void setEstado(String estado) {
    enderecoCliente = enderecoCliente.copyWith(uf: estado);
  }

  @action
  Future<void> getListaClientes() async {
    listaClientes = await repository.getListaClientes();
  }

  @action
  Future<void> salvarCliente() async {
    if (cliente.idCliente != null) {
      await repository.atualizarCliente(cliente);
    } else {
      await repository.salvarCliente(cliente);
    }
  }

  @action
  void selectNome(int id) {
    cliente = listaClientes.firstWhere((element) => element.idCliente == id);
  }

  @action
  void limparTexto() {
    cliente = ClienteModel.newInstance();
  }
}
