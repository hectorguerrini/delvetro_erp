enum UnidadeItemEnum {
  UNITARIO,
  METROQUADRADO,
  LINEAR,
}

extension UnidadeItemEnumExtension on UnidadeItemEnum {
  String get name {
    switch (this) {
      case UnidadeItemEnum.UNITARIO:
        return 'Unitário (Un.)';
      case UnidadeItemEnum.METROQUADRADO:
        return 'Metro Quadrado (m²)';
      case UnidadeItemEnum.LINEAR:
        return 'Metro Linear (m)';
    }
  }
}
