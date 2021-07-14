import 'package:delvetro_erp/app/modules/cadastro_cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository_interface.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroClienteController = _CadastroStoreBase
    with _$CadastroClienteStore;

abstract class _CadastroStoreBase with Store {
  final ICadastroClienteRepository repository;

  _CadastroStoreBase(this.repository);

  @observable
  ClienteModel cliente = ClienteModel.newInstance();

  @observable
  List<ClienteModel> listaClientes = [
    ClienteModel(
        telefones: [],
        nome: 'João',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        email: 'email',
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado'),
    ClienteModel(
        telefones: [],
        nome: 'Teste',
        razaoSocial: 'razaoSocial',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        email: 'email',
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado'),
  ];

  @observable
  List<String> listaNomeCliente = [];

  @action
  List<String> getListaNomeClientes() {
    var lista = <String>[];
    for (var i = 0; i < listaClientes.length; i++) {
      lista.add(listaClientes[i].nome);
    }
    return lista;
  }

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
    cliente = cliente.copyWith(cep: cep);
  }

  @action
  void setEnederco(String endereco) {
    cliente = cliente.copyWith(endereco: endereco);
  }

  @action
  void setNumero(String numero) {
    cliente = cliente.copyWith(numero: numero);
  }

  @action
  void setComplemento(String? complemento) {
    cliente = cliente.copyWith(complemento: complemento);
  }

  @action
  void setBairro(String bairro) {
    cliente = cliente.copyWith(bairro: bairro);
  }

  @action
  void setCidade(String cidade) {
    cliente = cliente.copyWith(cidade: cidade);
  }

  @action
  void setEstado(String estado) {
    cliente = cliente.copyWith(estado: estado);
  }

  @action
  Future<void> salvarCliente() async {
    if (cliente.idCliente != null) {
      await repository.alterarCliente(cliente);
    } else {
      await repository.salvarCliente(cliente);
    }
  }

  @action
  Future<void> limparTexto() async {
    cliente = ClienteModel(
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
      idCliente: null,
      email: '',
    );
  }
}
