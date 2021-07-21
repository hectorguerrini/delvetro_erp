import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';

class TipoServicoEstoqueModel {
  final int id;
  final TipoComposicaoEnum? tipoComposicaoEnum;
  final String descricao;
  final double custo;

  TipoServicoEstoqueModel(
      {required this.id,
      this.tipoComposicaoEnum,
      required this.descricao,
      required this.custo});

  factory TipoServicoEstoqueModel.newInstance() {
    return TipoServicoEstoqueModel(
      custo: 0,
      descricao: '',
      id: 0,
      tipoComposicaoEnum: null,
    );
  }
}
