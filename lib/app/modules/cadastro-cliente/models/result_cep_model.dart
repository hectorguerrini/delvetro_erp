class ResultCepModel {
  final String cep;
  final String logradouro;
  final String? complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String numero;

  ResultCepModel({
    required this.cep,
    required this.logradouro,
    this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.numero,
  });

  factory ResultCepModel.fromMap(Map<String, dynamic> json) => ResultCepModel(
        cep: json['cep'] as String,
        logradouro: json['logradouro'] as String,
        complemento: '',
        bairro: json['bairro'] as String,
        localidade: json['localidade'] as String,
        uf: json['uf'] as String,
        numero: '',
      );

  Map<String, dynamic> toMap() => {
        'cep': cep,
        'logradouro': logradouro,
        'complemento': complemento,
        'bairro': bairro,
        'localidade': localidade,
        'uf': uf,
        'unidade': numero,
      };

  factory ResultCepModel.newInstance() {
    return ResultCepModel(
        bairro: '',
        cep: '',
        complemento: '',
        localidade: '',
        logradouro: '',
        uf: '',
        numero: '');
  }

  ResultCepModel copyWith(
      {String? cep,
      String? logradouro,
      String? complemento,
      String? bairro,
      String? localidade,
      String? uf,
      String? numero}) {
    return ResultCepModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      localidade: localidade ?? this.localidade,
      uf: uf ?? this.uf,
      numero: numero ?? this.numero,
    );
  }
}
