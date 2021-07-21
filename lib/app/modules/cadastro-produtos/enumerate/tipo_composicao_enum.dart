enum TipoComposicaoEnum { SERVICO, ESTOQUE }

extension TipoComposicaoEnumExtension on TipoComposicaoEnum {
  String get name {
    switch (this) {
      case TipoComposicaoEnum.SERVICO:
        return 'Serviço';
      case TipoComposicaoEnum.ESTOQUE:
        return 'Estoque';
    }
  }
}
