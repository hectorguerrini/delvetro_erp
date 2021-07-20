import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_trabalho_enum.dart';

class ListagemComposicaoModel {
  final int? idListagemComposicao;
  final String nome;
  final int? quantidade;
  final TipoComposicaoEnum tipoComposicao;
  final double? custo;

  ListagemComposicaoModel(
      {this.tipoComposicao = TipoComposicaoEnum.ESTOQUE,
      this.custo,
      this.idListagemComposicao,
      required this.nome,
      required this.quantidade});

  factory ListagemComposicaoModel.newInstance() {
    return ListagemComposicaoModel(
      idListagemComposicao: null,
      nome: '',
      quantidade: 0,
      custo: 0,
    );
  }

  ListagemComposicaoModel copyWith(
      {int? idListagemComposicao,
      String? nome,
      int? quantidade,
      double? custo,
      TipoComposicaoEnum? tipoComposicao}) {
    return ListagemComposicaoModel(
        idListagemComposicao: idListagemComposicao ?? this.idListagemComposicao,
        nome: nome ?? this.nome,
        quantidade: quantidade ?? this.quantidade,
        tipoComposicao: tipoComposicao ?? this.tipoComposicao,
        custo: custo ?? this.custo);
  }
}
