import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_trabalho_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'cadastro_produtos_repository_interface.dart';

class CadastroProdutosRepository implements ICadastroProdutosRepository {
  List<ProdutosModel> listaProdutosEstoque = [
    ProdutosModel(
        descricao: 'Vidro',
        tipoItem: TipoItemEnum.ESCRITORIO,
        precoUnitario: 10,
        quantidade: 10,
        custo: 12.5,
        idProduto: 1,
        prazo: '12/01/1222',
        tipoTrabalho: TipoTrabalhoEnum.ITEM,
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        total: 500)
  ];

  @override
  Future<void> atualizarProduto(ProdutosModel produtosEstoque) async {
    var produtosEstoqueAlterado = produtosEstoque;
    for (var i = 0; i < listaProdutosEstoque.length; i++) {
      if (produtosEstoqueAlterado.idProduto ==
          listaProdutosEstoque[i].idProduto) {
        listaProdutosEstoque[i] = produtosEstoqueAlterado;
      }
    }
  }

  @override
  Future<List<ProdutosModel>> getListaProdutosEstoque() {
    return Future.value(listaProdutosEstoque);
  }

  @override
  Future<void> salvarProduto(ProdutosModel itensEstoque) async {
    listaProdutosEstoque.add(itensEstoque);
  }
}
