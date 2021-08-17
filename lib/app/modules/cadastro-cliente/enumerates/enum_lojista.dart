enum LojistaEnum { SIM, NAO }

extension LojistaEnumExtension on LojistaEnum {
  String get name {
    switch (this) {
      case LojistaEnum.SIM:
        return 'Sim';

      case LojistaEnum.NAO:
        return 'Não';
    }
  }
}
