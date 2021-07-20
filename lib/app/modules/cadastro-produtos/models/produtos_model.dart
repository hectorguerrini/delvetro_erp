import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';

class ProdutosModel {
  final int? idProduto;
  final String descricao;
  final TipoItemEnum? tipoItem;
  final UnidadeItemEnum? unidadeItem;
  final double? custo;
  final double? precoUnitario;
  final String? prazo;
  final List<ListagemComposicaoModel>? listaComposicao;

  ProdutosModel(
      {this.idProduto,
      this.custo,
      this.listaComposicao,
      required this.descricao,
      this.tipoItem,
      this.unidadeItem,
      this.precoUnitario,
      this.prazo});

  factory ProdutosModel.newInstance() {
    return ProdutosModel(
        descricao: '',
        custo: 0,
        idProduto: null,
        listaComposicao: null,
        prazo: '',
        precoUnitario: 0,
        tipoItem: null,
        unidadeItem: null);
  }

  ProdutosModel copyWith(
      {int? idProduto,
      String? descricao,
      TipoItemEnum? tipoItem,
      UnidadeItemEnum? unidadeItem,
      double? custo,
      double? precoUnitario,
      String? prazo,
      List<ListagemComposicaoModel>? listaComposicao}) {
    return ProdutosModel(
        descricao: descricao ?? this.descricao,
        idProduto: idProduto ?? this.idProduto,
        tipoItem: tipoItem ?? this.tipoItem,
        unidadeItem: unidadeItem ?? this.unidadeItem,
        precoUnitario: precoUnitario ?? this.precoUnitario,
        prazo: prazo ?? this.prazo,
        listaComposicao: listaComposicao ?? this.listaComposicao,
        custo: custo ?? this.custo);
  }
}
