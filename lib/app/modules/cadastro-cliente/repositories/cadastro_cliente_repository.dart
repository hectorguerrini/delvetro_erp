import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';

import 'cadastro_cliente_repository_interface.dart';

class CadastroClienteRepository implements ICadastroClienteRepository {
  List<ClienteModel> listaClientes = [
    ClienteModel(
      telefones: [],
      nome: 'Guerreiro',
      razaoSocial: 'teste',
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
      idCliente: 1,
      email: 'guerreiro@gmail.com',
    ),
    ClienteModel(
        telefones: [],
        nome: 'Ronaldola',
        razaoSocial: 'teste1',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.NAO,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: 2,
        email: 'ronaldo@hotmail.com'),
  ];

  @override
  Future<void> salvarCliente(ClienteModel cliente) async {
    listaClientes.add(cliente);
  }

  @override
  Future<List<ClienteModel>> getListaClientes() {
    return Future.value(listaClientes);
  }

  @override
  Future<void> atualizarCliente(ClienteModel cliente) async {
    var clienteAlterado = cliente;
    for (var i = 0; i < listaClientes.length; i++) {
      if (clienteAlterado.idCliente == listaClientes[i].idCliente) {
        listaClientes[i] = clienteAlterado;
      }
    }
  }
}
