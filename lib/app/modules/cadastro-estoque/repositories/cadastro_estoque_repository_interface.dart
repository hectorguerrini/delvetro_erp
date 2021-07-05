import 'package:delvetro_erp/app/shared/models/itens_estoque_model.dart';

abstract class ICadastroEstoqueRepository {
  Future<void> salvarItem(ItensEstoqueModel itensEstoque);
  Future<void> atualizarItem(ItensEstoqueModel itensEstoque);
  Future<List<ItensEstoqueModel>> getListaItensEstoque();
}
