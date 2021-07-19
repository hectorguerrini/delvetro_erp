import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_trabalho_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';

class ProdutosModel {
  final int? idProduto;
  final String descricao;
  final TipoItemEnum? tipoItem;
  final UnidadeItemEnum? unidadeItem;
  final double precoUnitario;
  final String? prazo;
  final TipoTrabalhoEnum? tipoTrabalho;
  final int quantidade;
  final double custo;
  final double? total;

  ProdutosModel(
      {this.idProduto,
      required this.descricao,
      required this.tipoItem,
      this.unidadeItem,
      required this.precoUnitario,
      this.prazo,
      this.tipoTrabalho,
      required this.quantidade,
      required this.custo,
      this.total});

  factory ProdutosModel.newInstance() {
    return ProdutosModel(
        idProduto: null,
        descricao: '',
        tipoItem: null,
        unidadeItem: null,
        precoUnitario: 0,
        prazo: '',
        tipoTrabalho: null,
        quantidade: 0,
        custo: 0,
        total: 0);
  }

  ProdutosModel copyWith({
    int? idProduto,
    String? descricao,
    TipoItemEnum? tipoItem,
    UnidadeItemEnum? unidadeItem,
    double? precoUnitario,
    String? prazo,
    TipoTrabalhoEnum? tipoTrabalho,
    int? quantidade,
    double? custo,
    double? total,
  }) {
    return ProdutosModel(
      idProduto: idProduto ?? this.idProduto,
      descricao: descricao ?? this.descricao,
      tipoItem: tipoItem ?? this.tipoItem,
      unidadeItem: unidadeItem ?? this.unidadeItem,
      prazo: prazo ?? this.prazo,
      precoUnitario: precoUnitario ?? this.precoUnitario,
      tipoTrabalho: tipoTrabalho ?? this.tipoTrabalho,
      quantidade: quantidade ?? this.quantidade,
      custo: custo ?? this.custo,
      total: total ?? this.total,
    );
  }
}
