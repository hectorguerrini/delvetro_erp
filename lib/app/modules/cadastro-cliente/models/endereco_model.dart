class EnderecoModel {
  final String cep;
  final String endereco;
  final String numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String estado;

  EnderecoModel(
      {required this.cep,
      required this.endereco,
      required this.numero,
      required this.complemento,
      required this.bairro,
      required this.cidade,
      required this.estado});

  factory EnderecoModel.newInstance() {
    return EnderecoModel(
        bairro: '',
        cep: '',
        cidade: '',
        complemento: '',
        endereco: '',
        estado: '',
        numero: '');
  }

  EnderecoModel copyWith({
    String? cep,
    String? endereco,
    String? numero,
    String? complemento,
    String? bairro,
    String? cidade,
    String? estado,
  }) {
    return EnderecoModel(
      cep: cep ?? this.cep,
      endereco: endereco ?? this.endereco,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
    );
  }
}
