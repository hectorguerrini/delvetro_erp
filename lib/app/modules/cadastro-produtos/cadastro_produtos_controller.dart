import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/listagem_composicao_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/tipo_servico_estoque_model.dart';
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
    getListaServicos();
  }

  @observable
  ProdutosModel produtosEstoque = ProdutosModel.newInstance();

  @observable
  ListagemComposicaoModel listagemComposicaoEstoque =
      ListagemComposicaoModel.newInstance();

  @observable
  TipoServicoEstoqueModel tipoServicoEstoque =
      TipoServicoEstoqueModel.newInstance();

  @observable
  List<ProdutosModel> listaProdutosEstoque = [];

  @observable
  List<TipoServicoEstoqueModel> listaServicosEstoque = [];

  @computed
  double get getTotal => produtosEstoque.listaComposicao.isEmpty
      ? 0
      : produtosEstoque.listaComposicao
          .map((e) =>
              e.custo! *
              (e.quantidade == null || e.quantidade == 0 ? 1 : e.quantidade!))
          .reduce((value, element) => value + element.toDouble());

  @computed
  String get getTotalFormated =>
      'Total: R\$ ' + getTotal.toStringAsFixed(2).replaceAll('.', ',');

  @action
  void setDescricaoComposicao(String value) {
    listagemComposicaoEstoque =
        listagemComposicaoEstoque.copyWith(descricao: value);
  }

  @action
  void setTipoComposicao(TipoComposicaoEnum? value) {
    listagemComposicaoEstoque =
        listagemComposicaoEstoque.copyWith(tipoComposicao: value);
  }

  @action
  void setCustoComposicao(double value) {
    listagemComposicaoEstoque =
        listagemComposicaoEstoque.copyWith(custo: value);
  }

  @action
  void setQuantidadeComposicao(int value) {
    listagemComposicaoEstoque =
        listagemComposicaoEstoque.copyWith(quantidade: value);
  }

  @computed
  List<GenericFieldsModel> get listaDescricao => listaProdutosEstoque
      .map((e) => GenericFieldsModel(caption: e.descricao, id: e.idProduto))
      .toList();

  @computed
  List<GenericFieldsModel> get listaServicos => listaServicosEstoque
      .map((e) => GenericFieldsModel(caption: e.descricao, id: e.id))
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

  @action
  void adicionarComposicao() {
    var lista =
        List<ListagemComposicaoModel>.from(produtosEstoque.listaComposicao);
    lista.add(listagemComposicaoEstoque);
    produtosEstoque = produtosEstoque.copyWith(listaComposicao: lista);
  }

  @action
  void removerComposicao(int index) {
    var lista =
        List<ListagemComposicaoModel>.from(produtosEstoque.listaComposicao);
    lista.removeAt(index);
    produtosEstoque = produtosEstoque.copyWith(listaComposicao: lista);
  }

  @action
  Future<void> getListaProdutos() async {
    listaProdutosEstoque = await repository.getListaProdutos();
  }

  @action
  Future<void> getListaServicos() async {
    listaServicosEstoque = await repository.getListaServicos();
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
    listagemComposicaoEstoque = ListagemComposicaoModel.newInstance();
  }

  @action
  void selectProduto(int id) {
    produtosEstoque =
        listaProdutosEstoque.firstWhere((element) => element.idProduto == id);
  }

  @action
  void selectComposicao(int id) {
    tipoServicoEstoque =
        listaServicosEstoque.firstWhere((element) => element.id == id);
    listagemComposicaoEstoque = listagemComposicaoEstoque.copyWith(
        tipoComposicao: tipoServicoEstoque.tipoComposicaoEnum,
        custo: tipoServicoEstoque.custo,
        descricao: tipoServicoEstoque.descricao);
  }
}
