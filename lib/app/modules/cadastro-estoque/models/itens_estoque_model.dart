import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/categorais_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';

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
  final CategoriasEstoqueEnum? categoriasEstoqueEnum;

  ItensEstoqueModel({
    this.idEstoque,
    required this.descricao,
    this.tipoItem,
    this.localizacao,
    this.unidadeItem,
    this.quantidade,
    required this.estoqueMinimo,
    required this.estoqueMaximo,
    this.espessura,
    this.custo,
    this.categoriasEstoqueEnum,
  });

  factory ItensEstoqueModel.newInstance() {
    return ItensEstoqueModel(
      categoriasEstoqueEnum: null,
      idEstoque: null,
      descricao: '',
      tipoItem: null,
      localizacao: '',
      unidadeItem: null,
      quantidade: 0,
      estoqueMinimo: 0,
      estoqueMaximo: 0,
      espessura: 0,
      custo: 0,
    );
  }

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
      double? custo,
      CategoriasEstoqueEnum? categoriasEstoqueEnum}) {
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
      categoriasEstoqueEnum:
          categoriasEstoqueEnum ?? this.categoriasEstoqueEnum,
    );
  }
}
