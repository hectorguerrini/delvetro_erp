import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/endereco_model.dart';

import 'cadastro_cliente_repository_interface.dart';

class CadastroClienteRepository implements ICadastroClienteRepository {
  List<ClienteModel> listaClientes = [
    ClienteModel(
      telefones: ['(00) 00000-0000', '(11) 12342-4545', '(11) 78787-7878'],
      nome: 'Guerreiro',
      razaoSocial: 'teste',
      cpf: '377.222.323-44',
      nomeContato: 'nomeContato',
      rgContato: 'rgContato',
      lojista: LojistaEnum.SIM,
      enderecoModel: EnderecoModel(
          bairro: 'São Gonçalo',
          cep: '04297-000',
          cidade: 'Rio de Janeiro',
          complemento: 'apto 71',
          endereco: 'Avenida Paulista',
          estado: 'RJ',
          numero: '10'),
      idCliente: 1,
      email: 'guerreiro@gmail.com',
    ),
    ClienteModel(
        telefones: ['(11) 99126-3232', '(11) 78787-7878', ''],
        nome: 'Ronaldola',
        razaoSocial: 'teste1',
        cpf: '645.435.976-21',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.NAO,
        enderecoModel: EnderecoModel(
            bairro: 'Vila Vermelha',
            cep: '04297-000',
            cidade: 'São Paulo',
            complemento: 'torre4',
            endereco: 'Avenida Padre Arlindo Vieira',
            estado: 'SP',
            numero: '5000'),
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
