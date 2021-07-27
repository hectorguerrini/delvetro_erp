import 'dart:convert';

class ResultCep {
  var cep;
  var logradouro;
  var complemento;
  var bairro;
  var localidade;
  var uf;
  var unidade;
  var ibge;
  var gia;

  ResultCep({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.unidade,
    required this.ibge,
    required this.gia,
  });

  factory ResultCep.fromJson(String str) =>
      ResultCep.fromMap(jsonDecode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory ResultCep.fromMap(Map<String, dynamic> json) => ResultCep(
        cep: json['cep'],
        logradouro: json['logradouro'],
        complemento: json['complemento'],
        bairro: json['bairro'],
        localidade: json['localidade'],
        uf: json['uf'],
        unidade: json['unidade'],
        ibge: json['ibge'],
        gia: json['gia'],
      );

  Map<String, dynamic> toMap() => {
        'cep': cep,
        'logradouro': logradouro,
        'complemento': complemento,
        'bairro': bairro,
        'localidade': localidade,
        'uf': uf,
        'unidade': unidade,
        'ibge': ibge,
        'gia': gia,
      };
}
