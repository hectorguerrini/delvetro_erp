enum TipoServicoEnum {
  TEMPERERA,
  BISOTE,
  LAPIDACAO,
  FURO,
  CORTE,
  RECORTE,
  PINTURA,
  OUTROS,
}

extension TipoItemEnumExtension on TipoServicoEnum {
  String get name {
    switch (this) {
      case TipoServicoEnum.TEMPERERA:
        return 'Temperera';
      case TipoServicoEnum.BISOTE:
        return 'Bisote';
      case TipoServicoEnum.LAPIDACAO:
        return 'Lapidação';
      case TipoServicoEnum.FURO:
        return 'Furo';
      case TipoServicoEnum.CORTE:
        return 'Corte';
      case TipoServicoEnum.RECORTE:
        return 'Recorte';
      case TipoServicoEnum.PINTURA:
        return 'Pintura';
      case TipoServicoEnum.OUTROS:
        return 'Outros';
    }
  }
}
