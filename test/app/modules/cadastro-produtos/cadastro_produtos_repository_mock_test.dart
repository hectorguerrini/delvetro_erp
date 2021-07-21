import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CadastroProdutosRepository cadastroProdutosRepository;
  var produtoAdicional = ProdutosModel(
    idProduto: 10,
    descricao: 'Vidro',
    tipoItem: TipoItemEnum.ESCRITORIO,
    precoUnitario: 10,
    custo: 12.5,
    prazo: '12/01/1222',
    listaComposicao: [
      ListagemComposicaoModel(
          descricao: 'Teste Nome1', quantidade: 5, idListagemComposicao: 1),
      ListagemComposicaoModel(
          descricao: 'Teste Nome2', quantidade: 15, idListagemComposicao: 2),
      ListagemComposicaoModel(
          descricao: 'Teste Nome3', quantidade: 25, idListagemComposicao: 3),
    ],
    unidadeItem: UnidadeItemEnum.METROQUADRADO,
  );

  setUpAll(() {
    cadastroProdutosRepository = CadastroProdutosRepository();
  });

  test('[TEST] - getListaProdutos', () {
    expect(cadastroProdutosRepository.listaProdutosEstoque.isNotEmpty, true);
  });

  test('[TEST] - getListaServicos', () {
    expect(cadastroProdutosRepository.listaTipoServicoEstoque.isNotEmpty, true);
  });

  test('[TEST] - salvarProduto', () async {
    await cadastroProdutosRepository.salvarProduto(produtoAdicional);
    var teste = cadastroProdutosRepository.listaProdutosEstoque
        .where((element) => element == produtoAdicional)
        .isNotEmpty;
    expect(teste, true);
  });

  test('[TEST] - atualizarProduto', () async {
    var produtoMock = ProdutosModel(
      idProduto: 1,
      descricao: 'Vidro',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 25,
      prazo: '12/01/1222',
      listaComposicao: [
        ListagemComposicaoModel(
            descricao: 'Teste Nome1', quantidade: 5, idListagemComposicao: 1),
        ListagemComposicaoModel(
            descricao: 'Teste Nome2', quantidade: 15, idListagemComposicao: 2),
        ListagemComposicaoModel(
            descricao: 'Teste Nome3', quantidade: 25, idListagemComposicao: 3),
      ],
      unidadeItem: UnidadeItemEnum.METROQUADRADO,
    );
    await cadastroProdutosRepository.atualizarProduto(produtoMock);
    var value = cadastroProdutosRepository.listaProdutosEstoque
        .where((element) => element.idProduto == produtoMock.idProduto)
        .single;
    expect(value.custo, 25);
  });
}
