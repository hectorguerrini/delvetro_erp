import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository_interface.dart';
import 'package:delvetro_erp/app/shared/models/itens_estoque_model.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_estoque_controller.g.dart';

class CadastroEstoqueController = CadastroEstoqueControllerBase
    with _$CadastroEstoqueController;

abstract class CadastroEstoqueControllerBase with Store {
  final ICadastroEstoqueRepository repository;

  CadastroEstoqueControllerBase(this.repository) {
    getListaItens();
  }

  @observable
  ItensEstoqueModel itensEstoque = ItensEstoqueModel(
      descricao: '',
      localizacao: '',
      quantidade: 0,
      estoqueMinimo: 0,
      estoqueMaximo: 0,
      espessura: 0.0,
      custo: 0.0);

  @observable
  List<ItensEstoqueModel> listaItensEstoque = [];

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
}
