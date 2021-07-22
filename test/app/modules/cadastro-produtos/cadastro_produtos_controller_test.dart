import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/tipo_servico_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository_interface.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cadastro_produtos_controller_test.mocks.dart';

@GenerateMocks([ICadastroProdutosRepository])
void main() {
  ICadastroProdutosRepository repository = MockICadastroProdutosRepository();
  late CadastroProdutosController cadastroProdutosController;
  var mockProdutos = [
    ProdutosModel.newInstance().copyWith(
      idProduto: 10,
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
            custo: 10),
        ListagemComposicaoModel(
            descricao: 'Teste Nome2',
            quantidade: 15,
            idListagemComposicao: 2,
            custo: 20),
        ListagemComposicaoModel(
            descricao: 'Teste Nome3',
            quantidade: 25,
            idListagemComposicao: 3,
            custo: 30),
      ],
      unidadeItem: UnidadeItemEnum.METROQUADRADO,
    )
  ];

  var mockServicos = [
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

  setUpAll(() {
    when(repository.getListaProdutos()).thenAnswer((_) async => mockProdutos);
    when(repository.getListaServicos()).thenAnswer((_) async => mockServicos);
    cadastroProdutosController = CadastroProdutosController(repository);
  });

  test('[TEST] - setTotal', () {
    cadastroProdutosController.produtosEstoque =
        ProdutosModel.newInstance().copyWith(
      idProduto: 10,
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
            custo: 10),
        ListagemComposicaoModel(
            descricao: 'Teste Nome2', idListagemComposicao: 2, custo: 20),
        ListagemComposicaoModel(
            descricao: 'Teste Nome3', idListagemComposicao: 3, custo: 30),
      ],
      unidadeItem: UnidadeItemEnum.METROQUADRADO,
    );
    expect(cadastroProdutosController.getTotal, 100);
  });

  test('[TEST] - setDescricaoComposicao', () {
    var teste = 'teste1';
    cadastroProdutosController.setDescricaoComposicao(teste);
    expect(
        cadastroProdutosController.listagemComposicaoEstoque.descricao, teste);
  });

  test('[TEST] - setTipoComposicao', () {
    var teste = TipoComposicaoEnum.ESTOQUE;
    cadastroProdutosController.setTipoComposicao(teste);
    expect(cadastroProdutosController.listagemComposicaoEstoque.tipoComposicao,
        teste);
  });

  test('[TEST] - setCustoComposicao', () {
    var teste = 10.0;
    cadastroProdutosController.setCustoComposicao(teste);
    expect(cadastroProdutosController.listagemComposicaoEstoque.custo, teste);
  });

  test('[TEST] - setQuantidadeComposicao', () {
    var teste = 10;
    cadastroProdutosController.setQuantidadeComposicao(teste);
    expect(
        cadastroProdutosController.listagemComposicaoEstoque.quantidade, teste);
  });

  test('[TEST] - get listaDescricao', () {
    var mockListaDescricao = cadastroProdutosController.listaDescricao;
    expect(mockListaDescricao.isNotEmpty, true);
  });

  test('[TEST] - get listaServicos', () {
    var mockListaServicos = cadastroProdutosController.listaServicos;
    expect(mockListaServicos.isNotEmpty, true);
  });

  test('[TEST] - setDescricao', () {
    var teste = 'teste1';
    cadastroProdutosController.setDescricao(teste);
    expect(cadastroProdutosController.produtosEstoque.descricao, teste);
  });

  test('[TEST] - setTipoItem', () {
    var teste = TipoItemEnum.ESCRITORIO;
    cadastroProdutosController.setTipoItem(teste);
    expect(cadastroProdutosController.produtosEstoque.tipoItem, teste);
  });

  test('[TEST] - setUnidadeItem', () {
    var teste = UnidadeItemEnum.METROQUADRADO;
    cadastroProdutosController.setUnidadeItem(teste);
    expect(cadastroProdutosController.produtosEstoque.unidadeItem, teste);
  });

  test('[TEST] - setCusto', () {
    var teste = 10.2;
    cadastroProdutosController.setCusto(teste);
    expect(cadastroProdutosController.produtosEstoque.custo, teste);
  });

  test('[TEST] - setPrecoUnitario', () {
    var teste = 10.2;
    cadastroProdutosController.setPrecoUnitario(teste);
    expect(cadastroProdutosController.produtosEstoque.precoUnitario, teste);
  });

  test('[TEST] - setPrazo', () {
    var teste = '10.2';
    cadastroProdutosController.setPrazo(teste);
    expect(cadastroProdutosController.produtosEstoque.prazo, teste);
  });

  test('[TEST] - adicionarComposicao e removerComposicao', () {
    cadastroProdutosController.adicionarComposicao();
    expect(
        cadastroProdutosController.produtosEstoque.listaComposicao.isNotEmpty,
        true);
    cadastroProdutosController.removerComposicao(0);
    expect(
        cadastroProdutosController.produtosEstoque.listaComposicao.isNotEmpty,
        false);
  });

  test('[TEST] - getListaProdutos', () {
    expect(cadastroProdutosController.listaProdutosEstoque, mockProdutos);
  });

  test('[TEST] - getListaServicos', () {
    expect(cadastroProdutosController.listaServicosEstoque, mockServicos);
  });

  test('[TEST] - salvarProduto args idProduto diferente null', () async {
    var produtoAdicional = ProdutosModel.newInstance().copyWith(
      idProduto: 1,
      descricao: 'Vidro',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 15,
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
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    when(repository.atualizarProduto(produtoAdicional))
        .thenAnswer((_) async {});
    await cadastroProdutosController.salvarProduto();
    verify(repository.atualizarProduto(produtoAdicional)).called(1);
  });

  test('[TEST] - salvarProduto args idProduto igual null', () async {
    var produtoAdicional = ProdutosModel.newInstance().copyWith(
      idProduto: null,
      descricao: 'Madeira',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 20,
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
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    when(repository.salvarProduto(produtoAdicional)).thenAnswer((_) async {});
    await cadastroProdutosController.salvarProduto();
    verify(repository.salvarProduto(produtoAdicional)).called(1);
  });

  test('[TEST] - limparTexto', () async {
    var produtoAdicional = ProdutosModel.newInstance().copyWith(
      idProduto: 1,
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
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    cadastroProdutosController.limparTexto();
    expect(cadastroProdutosController.produtosEstoque.descricao, '');
    expect(cadastroProdutosController.produtosEstoque.idProduto, null);
  });

  test('[TEST] - selectProduto', () {
    cadastroProdutosController.selectProduto(10);
    expect(
        cadastroProdutosController.produtosEstoque.descricao.isNotEmpty, true);
  });

  test('[TEST] - selectComposicao', () {
    cadastroProdutosController.selectComposicao(1);
    expect(cadastroProdutosController.tipoServicoEstoque.descricao.isNotEmpty,
        true);
    expect(
        cadastroProdutosController
            .listagemComposicaoEstoque.descricao.isNotEmpty,
        true);
  });
}
