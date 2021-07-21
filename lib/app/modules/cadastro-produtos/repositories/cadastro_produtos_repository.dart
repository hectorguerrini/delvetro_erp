import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/tipo_servico_estoque_model.dart';
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
            descricao: 'Teste Nome1',
            quantidade: 5,
            idListagemComposicao: 1,
            tipoComposicao: TipoComposicaoEnum.SERVICO,
            custo: 10),
        ListagemComposicaoModel(
            descricao: 'Teste Nome2',
            quantidade: 15,
            idListagemComposicao: 2,
            tipoComposicao: TipoComposicaoEnum.ESTOQUE,
            custo: 20),
        ListagemComposicaoModel(
            descricao: 'Teste Nome3',
            quantidade: 25,
            idListagemComposicao: 3,
            tipoComposicao: TipoComposicaoEnum.SERVICO,
            custo: 30),
      ],
      unidadeItem: UnidadeItemEnum.METROQUADRADO,
    )
  ];

  List<TipoServicoEstoqueModel> listaTipoServicoEstoque = [
    TipoServicoEstoqueModel(
        id: 1,
        tipoComposicaoEnum: TipoComposicaoEnum.SERVICO,
        descricao: 'teste1',
        custo: 10),
    TipoServicoEstoqueModel(
        id: 2,
        tipoComposicaoEnum: TipoComposicaoEnum.SERVICO,
        descricao: 'teste2',
        custo: 20),
    TipoServicoEstoqueModel(
        id: 3,
        tipoComposicaoEnum: TipoComposicaoEnum.ESTOQUE,
        descricao: 'teste3',
        custo: 30),
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
  Future<List<TipoServicoEstoqueModel>> getListaServicos() {
    return Future.value(listaTipoServicoEstoque);
  }

  @override
  Future<void> salvarProduto(ProdutosModel produtosEstoque) async {
    listaProdutosEstoque.add(produtosEstoque);
  }
}
