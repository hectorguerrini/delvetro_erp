enum TipoExternoEnum { SIM, NAO }

extension TipoExternoEnumExtension on TipoExternoEnum {
  String get name {
    switch (this) {
      case TipoExternoEnum.SIM:
        return 'Sim';
      case TipoExternoEnum.NAO:
        return 'Não';
    }
  }
}
