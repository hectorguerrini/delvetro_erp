import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
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
  var array = [
    ProdutosModel(
      idProduto: 10,
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
  setUpAll(() {
    when(repository.getListaProdutos()).thenAnswer((_) async => array);
    cadastroProdutosController = CadastroProdutosController(repository);
  });

  test('[TEST] - getListaProdutosEstoque', () {
    expect(cadastroProdutosController.listaProdutosEstoque, array);
  });

  test('[TEST] - salvarProduto args idProduto diferente null', () async {
    var produtoAdicional = ProdutosModel(
      idProduto: 1,
      descricao: 'Vidro',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 15,
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
    );
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    when(repository.atualizarProduto(produtoAdicional))
        .thenAnswer((_) async {});
    await cadastroProdutosController.salvarProduto();
    verify(repository.atualizarProduto(produtoAdicional)).called(1);
  });

  test('[TEST] - salvarProduto args idProduto igual null', () async {
    var produtoAdicional = ProdutosModel(
      idProduto: null,
      descricao: 'Madeira',
      tipoItem: TipoItemEnum.ESCRITORIO,
      precoUnitario: 10,
      custo: 20,
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
    );
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    when(repository.salvarProduto(produtoAdicional)).thenAnswer((_) async {});
    await cadastroProdutosController.salvarProduto();
    verify(repository.salvarProduto(produtoAdicional)).called(1);
  });

  test('[TEST] - limparTexto', () async {
    var produtoAdicional = ProdutosModel(
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
    );
    cadastroProdutosController.produtosEstoque = produtoAdicional;
    cadastroProdutosController.limparTexto();
    expect(cadastroProdutosController.produtosEstoque.descricao, '');
    expect(cadastroProdutosController.produtosEstoque.idProduto, null);
  });
}
