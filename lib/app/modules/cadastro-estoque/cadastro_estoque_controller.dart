import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/categorais_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository_interface.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/models/itens_estoque_model.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_estoque_controller.g.dart';

class CadastroEstoqueController = CadastroEstoqueControllerBase
    with _$CadastroEstoqueController;

abstract class CadastroEstoqueControllerBase with Store {
  final ICadastroEstoqueRepository repository;

  CadastroEstoqueControllerBase(this.repository) {
    getListaItens();
    getListaDescricao();
  }

  @observable
  ItensEstoqueModel itensEstoque = ItensEstoqueModel.newInstance();

  @observable
  List<ItensEstoqueModel> listaItensEstoque = [];

  @observable
  List<String> listaDescricao = [];

  @action
  List<String> getListaDescricao() {
    var list = <String>[];
    for (var i = 0; i < listaItensEstoque.length; i++) {
      list.add(listaItensEstoque[i].descricao);
    }
    return list;
  }

  @action
  void setDescricao(String value) {
    itensEstoque = itensEstoque.copyWith(descricao: value);
  }

  @action
  void setTipoItem(TipoItemEnum? value) {
    itensEstoque = itensEstoque.copyWith(tipoItem: value);
  }

  @action
  void setLocalizacao(String value) {
    itensEstoque = itensEstoque.copyWith(localizacao: value);
  }

  @action
  void setUnidade(UnidadeItemEnum? value) {
    itensEstoque = itensEstoque.copyWith(unidadeItem: value);
  }

  @action
  void setQuantidade(int value) {
    itensEstoque = itensEstoque.copyWith(quantidade: value);
  }

  @action
  void setEstoqueMinimo(int value) {
    itensEstoque = itensEstoque.copyWith(estoqueMinimo: value);
  }

  @action
  void setEstoqueMaximo(int value) {
    itensEstoque = itensEstoque.copyWith(estoqueMaximo: value);
  }

  @action
  void setCusto(double value) {
    itensEstoque = itensEstoque.copyWith(custo: value);
  }

  @action
  void setEspessura(double value) {
    itensEstoque = itensEstoque.copyWith(espessura: value);
  }

  @action
  void setCategorias(CategoriasEstoqueEnum? value) {
    itensEstoque = itensEstoque.copyWith(categoriasEstoqueEnum: value);
  }

  @action
  Future<void> getListaItens() async {
    listaItensEstoque = await repository.getListaItensEstoque();
  }

  @action
  Future<void> salvarItem() async {
    if (itensEstoque.idEstoque != null) {
      await repository.atualizarItem(itensEstoque);
    } else {
      await repository.salvarItem(itensEstoque);
    }
  }

  @action
  Future<void> limparTexto() async {
    itensEstoque = ItensEstoqueModel.newInstance();
  }

  // @action
  // bool validaTexto() {
  //   var validacao = (itensEstoque.tipoItem == null ||
  //           itensEstoque.unidadeItem == null ||
  //           itensEstoque.estoqueMinimo == 0 ||
  //           itensEstoque.estoqueMaximo == 0 ||
  //           itensEstoque.estoqueMaximo <= itensEstoque.estoqueMinimo)
  //       ? false
  //       : true;
  //   return validacao;
  // }
}
