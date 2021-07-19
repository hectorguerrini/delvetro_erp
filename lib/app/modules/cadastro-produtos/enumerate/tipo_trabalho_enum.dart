enum TipoTrabalhoEnum { SERVICO, ITEM }

extension TipoTrabalhoEnumExtension on TipoTrabalhoEnum {
  String get name {
    switch (this) {
      case TipoTrabalhoEnum.SERVICO:
        return 'Serviço';
      case TipoTrabalhoEnum.ITEM:
        return 'item';
    }
  }
}
