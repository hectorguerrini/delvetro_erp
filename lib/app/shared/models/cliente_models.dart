import 'package:delvetro_erp/app/modules/cadastro_cliente/enumerates/enum_lojista.dart';

class ClienteModel {
  final String nome;
  final String razaoSocial;
  final String cpf;
  final String nomeContato;
  final String rgContato;
  final LojistaEnum? lojista;
  final String cep;
  final String endereco;
  final String numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String estado;
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
    this.lojista,
    required this.cep,
    required this.endereco,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cidade,
    required this.estado,
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

  ClienteModel copyWith({
    List<String>? telefones,
    String? nome,
    String? razaoSocial,
    String? cpf,
    String? nomeContato,
    String? rgContato,
    LojistaEnum? lojista,
    String? cep,
    String? endereco,
    String? numero,
    String? complemento,
    String? bairro,
    String? cidade,
    String? estado,
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
      cep: cep ?? this.cep,
      endereco: endereco ?? this.endereco,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
      idCliente: idCliente ?? this.idCliente,
      email: email ?? this.email,
    );
  }
}
