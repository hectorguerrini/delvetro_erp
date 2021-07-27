enum CategoriasEstoqueEnum {
  KIT_AL,
  KIT_POLIMERO,
  PRATELEIRA,
  FERRAGEM,
  ALUMINIO,
  MATERIAL_USO_E_CONSUMO,
  BOX,
  MAQUINAS_E_EQUIPAMENTOS,
  CABOS,
  CACOS_DE_VIDROS,
  INVESTIMENTO,
  CAVALETE,
  EMBALAGEM,
  ESPELHO,
  EPI,
  CONCRETO,
  KIT_BOX,
  FORNO,
  LAMINADO,
  TEMPERADO,
  OITOMM_PADRAO,
  KIT_ZAMAC,
  MASSA_DE_VIDRO,
  PELICULA,
  PINTURA,
  PORTA,
  CORTADO,
  SILICONE,
  CHAPARIA,
  VIDRO,
  FANTASIA
}

extension CategoriasEstoqueEnumExtension on CategoriasEstoqueEnum {
  String get name {
    switch (this) {
      case CategoriasEstoqueEnum.KIT_AL:
        return 'Kit Al';
      case CategoriasEstoqueEnum.KIT_POLIMERO:
        return 'Kit Polimero';
      case CategoriasEstoqueEnum.PRATELEIRA:
        return 'Prateleira';
      case CategoriasEstoqueEnum.FERRAGEM:
        return 'Ferragem';
      case CategoriasEstoqueEnum.ALUMINIO:
        return 'Alumínio';
      case CategoriasEstoqueEnum.MATERIAL_USO_E_CONSUMO:
        return 'Material Uso e Consumo';
      case CategoriasEstoqueEnum.BOX:
        return 'Box';
      case CategoriasEstoqueEnum.MAQUINAS_E_EQUIPAMENTOS:
        return 'Máquinas e Equipamentos';
      case CategoriasEstoqueEnum.CABOS:
        return 'Cabos';
      case CategoriasEstoqueEnum.CACOS_DE_VIDROS:
        return 'Cacos de Vidros';
      case CategoriasEstoqueEnum.INVESTIMENTO:
        return 'Investimento';
      case CategoriasEstoqueEnum.CAVALETE:
        return 'Cavalete';
      case CategoriasEstoqueEnum.EMBALAGEM:
        return 'Embalagem';
      case CategoriasEstoqueEnum.ESPELHO:
        return 'Espelho';
      case CategoriasEstoqueEnum.EPI:
        return 'EPI';
      case CategoriasEstoqueEnum.CONCRETO:
        return 'Concreto';
      case CategoriasEstoqueEnum.KIT_BOX:
        return 'Kit Box';
      case CategoriasEstoqueEnum.FORNO:
        return 'Forno';
      case CategoriasEstoqueEnum.LAMINADO:
        return 'Laminado';
      case CategoriasEstoqueEnum.TEMPERADO:
        return 'Temperado';
      case CategoriasEstoqueEnum.OITOMM_PADRAO:
        return '8MM Padrão';
      case CategoriasEstoqueEnum.KIT_ZAMAC:
        return 'Kit Zamac';
      case CategoriasEstoqueEnum.MASSA_DE_VIDRO:
        return 'Massa de Vidro';
      case CategoriasEstoqueEnum.PELICULA:
        return 'Película';
      case CategoriasEstoqueEnum.PINTURA:
        return 'Pintura';
      case CategoriasEstoqueEnum.PORTA:
        return 'Porta';
      case CategoriasEstoqueEnum.CORTADO:
        return 'Cortado';
      case CategoriasEstoqueEnum.SILICONE:
        return 'Silicone';
      case CategoriasEstoqueEnum.CHAPARIA:
        return 'Chaparia';
      case CategoriasEstoqueEnum.VIDRO:
        return 'Vidro';
      case CategoriasEstoqueEnum.FANTASIA:
        return 'Fantasia';
    }
  }
}
