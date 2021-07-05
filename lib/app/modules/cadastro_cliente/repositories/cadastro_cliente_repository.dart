import 'package:delvetro_erp/app/shared/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/shared/models/cliente_models.dart';

import 'cadastro_cliente_repository_interface.dart';

class CadastroRepository implements ICadastroClienteRepository {
  var clientes = <ClienteModel>[
    ClienteModel(
        telefones: [],
        nome: 'Guerreiro',
        razaoSocial: 'Gay',
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
        idCliente: 1),
    ClienteModel(
        telefones: [],
        nome: 'Ronaldola',
        razaoSocial: 'Baitola',
        cpf: 'cpf',
        nomeContato: 'nomeContato',
        rgContato: 'rgContato',
        lojista: LojistaEnum.Nao,
        cep: 'cep',
        endereco: 'endereco',
        numero: 'numero',
        complemento: 'complemento',
        bairro: 'bairro',
        cidade: 'cidade',
        estado: 'estado',
        idCliente: 2),
  ];

  @override
  Future<void> salvarCliente(ClienteModel cliente) async {
    var clienteAlterado = cliente;
    for (var i = 0; i < clientes.length; i++) {
      if (clienteAlterado.cpf == clientes[i].cpf) {
        clientes[i] = clienteAlterado;
      } else {
        clientes.add(cliente);
      }
    }
  }
}
