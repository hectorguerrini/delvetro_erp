import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository_interface.dart';
import 'package:mobx/mobx.dart';

import 'models/produtos_model.dart';

part 'cadastro_produtos_controller.g.dart';

class CadastroProdutosController = _CadastroProdutosControllerBase
    with _$CadastroProdutosController;

abstract class _CadastroProdutosControllerBase with Store {
  final ICadastroProdutosRepository repository;

  _CadastroProdutosControllerBase(this.repository) {
    getListaProdutos();
  }

  @observable
  ProdutosModel produtosEstoque = ProdutosModel.newInstance();

  @observable
  List<ProdutosModel> listaProdutosEstoque = [];

  @action
  Future<void> getListaProdutos() async {
    listaProdutosEstoque = await repository.getListaProdutos();
  }

  void adicionarComposicao(ListagemComposicaoModel listagemComposicaoModel) {
    produtosEstoque.listaComposicao!.add(listagemComposicaoModel);
  }

  void removerComposicao(
      ListagemComposicaoModel listagemComposicaoModel) async {
    produtosEstoque.listaComposicao!
        .removeWhere((element) => listagemComposicaoModel == element);
  }

  @action
  Future<void> salvarProduto() async {
    if (produtosEstoque.idProduto != null) {
      await repository.atualizarProduto(produtosEstoque);
    } else {
      await repository.salvarProduto(produtosEstoque);
    }
  }

  @action
  void limparTexto() {
    produtosEstoque = ProdutosModel.newInstance();
  }
}
