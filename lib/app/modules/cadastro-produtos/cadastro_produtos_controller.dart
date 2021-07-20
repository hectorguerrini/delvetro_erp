import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository_interface.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
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

  @computed
  List<GenericFieldsModel> get listaDescricao => listaProdutosEstoque
      .map((e) => GenericFieldsModel(caption: e.descricao, id: e.idProduto))
      .toList();

  @action
  void setDescricao(String value) {
    produtosEstoque = produtosEstoque.copyWith(descricao: value);
  }

  @action
  void setTipoItem(TipoItemEnum? value) {
    produtosEstoque = produtosEstoque.copyWith(tipoItem: value);
  }

  @action
  void setUnidadeItem(UnidadeItemEnum? value) {
    produtosEstoque = produtosEstoque.copyWith(unidadeItem: value);
  }

  @action
  void setCusto(double value) {
    produtosEstoque = produtosEstoque.copyWith(custo: value);
  }

  @action
  void setPrecoUnitario(double value) {
    produtosEstoque = produtosEstoque.copyWith(precoUnitario: value);
  }

  @action
  void setPrazo(String value) {
    produtosEstoque = produtosEstoque.copyWith(prazo: value);
  }

  void adicionarComposicao(ListagemComposicaoModel listagemComposicaoModel) {
    produtosEstoque.listaComposicao.add(listagemComposicaoModel);
  }

  void removerComposicao(
      ListagemComposicaoModel listagemComposicaoModel) async {
    produtosEstoque.listaComposicao
        .removeWhere((element) => listagemComposicaoModel == element);
  }

  @action
  Future<void> getListaProdutos() async {
    listaProdutosEstoque = await repository.getListaProdutos();
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

  @action
  void selectProduto(int id) {
    produtosEstoque =
        listaProdutosEstoque.firstWhere((element) => element.idProduto == id);
  }
}
