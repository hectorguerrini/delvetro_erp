import 'package:delvetro_erp/app/modules/cadastro-cliente/enumerates/enum_lojista.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/endereco_model.dart';

class ClienteModel {
  final String nome;
  final String razaoSocial;
  final String cpf;
  final String nomeContato;
  final String rgContato;
  final LojistaEnum? lojista;
  final EnderecoModel enderecoModel;
  final int? idCliente;
  final List<String> telefones;
  final String email;

  ClienteModel({
    required this.telefones,
    required this.nome,
    required this.razaoSocial,
    required this.cpf,
    required this.nomeContato,
    required this.rgContato,
    required this.email,
    required this.enderecoModel,
    this.lojista,
    this.idCliente,
  });

  factory ClienteModel.newInstance() {
    return ClienteModel(
      telefones: [],
      nome: '',
      razaoSocial: '',
      cpf: '',
      nomeContato: '',
      rgContato: '',
      lojista: null,
      enderecoModel: EnderecoModel(
          cep: '',
          bairro: '',
          cidade: '',
          complemento: '',
          endereco: '',
          estado: '',
          numero: ''),
      idCliente: null,
      email: '',
    );
  }

  ClienteModel copyWith({
    List<String>? telefones,
    String? nome,
    String? razaoSocial,
    String? cpf,
    String? nomeContato,
    String? rgContato,
    LojistaEnum? lojista,
    EnderecoModel? enderecoModel,
    int? idCliente,
    String? email,
  }) {
    return ClienteModel(
      telefones: telefones ?? this.telefones,
      nome: nome ?? this.nome,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      cpf: cpf ?? this.cpf,
      nomeContato: nomeContato ?? this.nomeContato,
      rgContato: rgContato ?? this.rgContato,
      lojista: lojista ?? this.lojista,
      enderecoModel: enderecoModel ?? this.enderecoModel,
      idCliente: idCliente ?? this.idCliente,
      email: email ?? this.email,
    );
  }
}
