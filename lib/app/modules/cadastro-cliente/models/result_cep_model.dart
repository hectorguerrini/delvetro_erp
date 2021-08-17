class ResultCepModel {
  final String cep;
  final String logradouro;

  final String bairro;
  final String localidade;
  final String uf;

  ResultCepModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

  factory ResultCepModel.fromMap(Map<String, dynamic> json) => ResultCepModel(
        cep: json['cep'] as String,
        logradouro: json['logradouro'] as String,
        bairro: json['bairro'] as String,
        localidade: json['localidade'] as String,
        uf: json['uf'] as String,
      );

  Map<String, dynamic> toMap() => {
        'cep': cep,
        'logradouro': logradouro,
        'bairro': bairro,
        'localidade': localidade,
        'uf': uf,
      };

  factory ResultCepModel.newInstance() {
    return ResultCepModel(
      bairro: '',
      cep: '',
      localidade: '',
      logradouro: '',
      uf: '',
    );
  }

  ResultCepModel copyWith({
    String? cep,
    String? logradouro,
    String? bairro,
    String? localidade,
    String? uf,
  }) {
    return ResultCepModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      bairro: bairro ?? this.bairro,
      localidade: localidade ?? this.localidade,
      uf: uf ?? this.uf,
    );
  }
}
