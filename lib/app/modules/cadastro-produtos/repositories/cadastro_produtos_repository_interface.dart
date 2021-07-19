import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';

abstract class ICadastroProdutosRepository {
  Future<void> salvarProduto(ProdutosModel itensEstoque);
  Future<void> atualizarProduto(ProdutosModel itensEstoque);
  Future<List<ProdutosModel>> getListaProdutosEstoque();
}
