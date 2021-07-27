import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/endereco_model.dart';

import 'cadastro_cliente_repository_interface.dart';

class CadastroClienteRepository implements ICadastroClienteRepository {
  List<ClienteModel> listaClientes = [
    ClienteModel(
      telefones: ['991263232', '23632468943', '328942389473'],
      nome: 'Guerreiro',
      razaoSocial: 'teste',
      cpf: '377.222.323-44',
      nomeContato: 'nomeContato',
      rgContato: 'rgContato',
      lojista: LojistaEnum.SIM,
      enderecoModel: EnderecoModel(
          bairro: '',
          cep: '',
          cidade: '',
          complemento: '',
          endereco: '',
          estado: '',
          numero: '10'),
      idCliente: 1,
      email: 'guerreiro@gmail.com',
    ),
    ClienteModel(
        telefones: ['991263232', '23632468943', '328942389473'],
        nome: 'Ronaldola',
        razaoSocial: 'teste1',
        cpf: '645.435.976-21',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.NAO,
        enderecoModel: EnderecoModel(
            bairro: '',
            cep: '',
            cidade: '',
            complemento: '',
            endereco: '',
            estado: '',
            numero: '100'),
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
