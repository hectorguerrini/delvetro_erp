class EnderecoModel {
  final String? cep;
  final String? endereco;
  final String? numero;
  final String? complemento;
  final String? bairro;
  final String? cidade;
  final String? estado;

  EnderecoModel(
      {this.cep,
      this.endereco,
      this.numero,
      this.complemento,
      this.bairro,
      this.cidade,
      this.estado});

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
