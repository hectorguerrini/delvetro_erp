import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'cadastro_produtos_repository_interface.dart';

class CadastroProdutosRepository implements ICadastroProdutosRepository {
  List<ProdutosModel> listaProdutosEstoque = [
    ProdutosModel(
      idProduto: 1,
      descricao: 'Vidro',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 12.5,
      prazo: '12/01/1222',
      listaComposicao: [
        ListagemComposicaoModel(
            nome: 'Teste Nome1', quantidade: 5, idListagemComposicao: 1),
        ListagemComposicaoModel(
            nome: 'Teste Nome2', quantidade: 15, idListagemComposicao: 2),
        ListagemComposicaoModel(
            nome: 'Teste Nome3', quantidade: 25, idListagemComposicao: 3),
      ],
      unidadeItem: UnidadeItemEnum.METROQUADRADO,
    )
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
  Future<List<ProdutosModel>> getListaProdutos() {
    return Future.value(listaProdutosEstoque);
  }

  @override
  Future<void> salvarProduto(ProdutosModel produtosEstoque) async {
    listaProdutosEstoque.add(produtosEstoque);
  }
}
