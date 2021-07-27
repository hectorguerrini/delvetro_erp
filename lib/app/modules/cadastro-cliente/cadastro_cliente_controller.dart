import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/endereco_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:delvetro_erp/app/modules/via-cep/via_cep_service.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_cliente_controller.g.dart';

class CadastroClienteController = _CadastroControllerBase
    with _$CadastroClienteController;

abstract class _CadastroControllerBase with Store {
  final ICadastroClienteRepository repository;

  _CadastroControllerBase(this.repository) {
    getListaClientes();
  }

  @observable
  ClienteModel cliente = ClienteModel.newInstance();

  @observable
  EnderecoModel enderecoCliente = EnderecoModel.newInstance();

  @observable
  List<ClienteModel> listaClientes = [];

  @action
  Future<void> procuraCEP(String cep) async {
    final resultCep = await ViaCepService.fetchCep(cep: cep);
    setEndereco(resultCep.logradouro.toString());
    setCidade(resultCep.localidade.toString());
    setEstado(resultCep.uf.toString());
    setBairro(resultCep.bairro.toString());
    print(enderecoCliente.bairro);
    cliente.copyWith(enderecoModel: enderecoCliente);
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
    enderecoCliente = enderecoCliente.copyWith(endereco: endereco);
  }

  @action
  void setNumero(int numero) {
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
    enderecoCliente = enderecoCliente.copyWith(cidade: cidade);
  }

  @action
  void setEstado(String estado) {
    enderecoCliente = enderecoCliente.copyWith(estado: estado);
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
