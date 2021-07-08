enum TipoItemEnum {
  CHAPARIA,
  PRODUCAO,
  MANUTENCAO,
  ESCRITORIO,
  LIMPEZA,
  FERRAMENTAS,
  REVENDA
}

extension TipoItemEnumExtension on TipoItemEnum {
  String get name {
    switch (this) {
      case TipoItemEnum.CHAPARIA:
        return 'Chaparia';
      case TipoItemEnum.PRODUCAO:
        return 'Produção';
      case TipoItemEnum.MANUTENCAO:
        return 'Manutenção';
      case TipoItemEnum.ESCRITORIO:
        return 'Escritório';
      case TipoItemEnum.LIMPEZA:
        return 'Limpeza';
      case TipoItemEnum.FERRAMENTAS:
        return 'Ferramentas';
      case TipoItemEnum.REVENDA:
        return 'Revenda';
    }
  }
}
