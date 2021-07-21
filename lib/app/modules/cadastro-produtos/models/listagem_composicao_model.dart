import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';

class ListagemComposicaoModel {
  final int? idListagemComposicao;
  final String descricao;
  final int? quantidade;
  final TipoComposicaoEnum tipoComposicao;
  final double? custo;

  ListagemComposicaoModel(
      {this.tipoComposicao = TipoComposicaoEnum.ESTOQUE,
      this.custo,
      this.idListagemComposicao,
      required this.descricao,
      required this.quantidade});

  factory ListagemComposicaoModel.newInstance() {
    return ListagemComposicaoModel(
      idListagemComposicao: null,
      descricao: '',
      quantidade: 0,
      custo: 0,
    );
  }

  ListagemComposicaoModel copyWith(
      {int? idListagemComposicao,
      String? descricao,
      int? quantidade,
      double? custo,
      TipoComposicaoEnum? tipoComposicao}) {
    return ListagemComposicaoModel(
        idListagemComposicao: idListagemComposicao ?? this.idListagemComposicao,
        descricao: descricao ?? this.descricao,
        quantidade: quantidade ?? this.quantidade,
        tipoComposicao: tipoComposicao ?? this.tipoComposicao,
        custo: custo ?? this.custo);
  }
}
