import 'package:delvetro_erp/app/modules/cadastro_cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';

import 'cadastro_cliente_repository_interface.dart';

class ClienteCadastroRepository implements ICadastroClienteRepository {
  var clientes = <ClienteModel>[
    ClienteModel(
      telefones: [],
      nome: 'Guerreiro',
      razaoSocial: 'Gay',
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
      email: '',
    ),
    ClienteModel(
        telefones: [],
        nome: 'Ronaldola',
        razaoSocial: 'Baitola',
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
        email: ''),
  ];

  @override
  Future<void> salvarCliente(ClienteModel cliente) async {
    clientes.add(cliente);
  }

  @override
  Future<void> alterarCliente(ClienteModel cliente) async {
    var clienteAlterado = cliente;
    for (var i = 0; i < clientes.length; i++) {
      if (clienteAlterado.idCliente == clientes[i].idCliente) {
        clientes[i] = clienteAlterado;
      }
    }
  }
}
