import 'package:delvetro_erp/app/modules/cadastro-produtos/models/produtos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/models/tipo_servico_estoque_model.dart';

abstract class ICadastroProdutosRepository {
  Future<void> salvarProduto(ProdutosModel itensEstoque);
  Future<void> atualizarProduto(ProdutosModel itensEstoque);
  Future<List<ProdutosModel>> getListaProdutos();
  Future<List<TipoServicoEstoqueModel>> getListaServicos();
}
