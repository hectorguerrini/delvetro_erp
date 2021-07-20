import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository_interface.dart';
import 'package:mobx/mobx.dart';

import 'models/produtos_model.dart';

part 'cadastro_produtos_controller.g.dart';

class CadastroProdutosController = _CadastroProdutosControllerBase
    with _$CadastroProdutosController;

abstract class _CadastroProdutosControllerBase with Store {
  final ICadastroProdutosRepository repository;

  _CadastroProdutosControllerBase(this.repository);

  @observable
  ProdutosModel produtosEstoque = ProdutosModel.newInstance();

  @observable
  List<ProdutosModel> listaProdutosEstoque = [];

  @action
  Future<void> getListaProdutos() async {
    listaProdutosEstoque = await repository.getListaProdutosEstoque();
  }

  void adicionarComposicao(ListagemComposicaoModel listagemComposicaoModel) {
    produtosEstoque.listaComposicao!.add(listagemComposicaoModel);
  }

  Future<void> removerComposicao(
      ListagemComposicaoModel listagemComposicaoModel) async {
    produtosEstoque.listaComposicao!
        .removeWhere((element) => listagemComposicaoModel == element);
  }

  @action
  Future<void> salvarItem() async {
    if (produtosEstoque.idEstoque != null) {
      await repository.atualizarProduto(produtosEstoque);
    } else {
      await repository.salvarProduto(produtosEstoque);
    }
  }

  @action
  Future<void> limparTexto() async {
    produtosEstoque = ProdutosModel.newInstance();
  }
}
