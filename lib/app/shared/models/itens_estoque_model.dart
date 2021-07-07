import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/unidade_item_enum.dart';

class ItensEstoqueModel {
  final int? idEstoque;
  final String descricao;
  final TipoItemEnum? tipoItem;
  final String? localizacao;
  final UnidadeItemEnum? unidadeItem;
  final int? quantidade;
  final int estoqueMinimo;
  final int estoqueMaximo;
  final double? espessura;
  final double? custo;

  ItensEstoqueModel(
      {this.idEstoque,
      required this.descricao,
      this.tipoItem,
      this.localizacao,
      this.unidadeItem,
      this.quantidade,
      required this.estoqueMinimo,
      required this.estoqueMaximo,
      this.espessura,
      this.custo});

  ItensEstoqueModel copyWith(
      {int? idEstoque,
      String? descricao,
      TipoItemEnum? tipoItem,
      String? localizacao,
      UnidadeItemEnum? unidadeItem,
      int? quantidade,
      int? estoqueMinimo,
      int? estoqueMaximo,
      double? espessura,
      double? custo}) {
    return ItensEstoqueModel(
      idEstoque: idEstoque ?? this.idEstoque,
      descricao: descricao ?? this.descricao,
      tipoItem: tipoItem ?? this.tipoItem,
      localizacao: localizacao ?? this.localizacao,
      unidadeItem: unidadeItem ?? this.unidadeItem,
      quantidade: quantidade ?? this.quantidade,
      estoqueMinimo: estoqueMinimo ?? this.estoqueMinimo,
      estoqueMaximo: estoqueMaximo ?? this.estoqueMaximo,
      espessura: espessura ?? this.espessura,
      custo: custo ?? this.custo,
    );
  }
}
