enum TipoItemEnum { VIDRO, ESPELHO }

extension TipoItemEnumExtension on TipoItemEnum {
  String get name {
    switch (this) {
      case TipoItemEnum.VIDRO:
        return 'Vidro';
      case TipoItemEnum.ESPELHO:
        return 'Espelho';
    }
  }
}
