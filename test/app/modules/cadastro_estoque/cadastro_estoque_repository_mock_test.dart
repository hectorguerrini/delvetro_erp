import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository.dart';
import 'package:delvetro_erp/app/shared/models/itens_estoque_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var cadastroEstoqueRepository = CadastroEstoqueRepository();
  var itemAdicional = ItensEstoqueModel(
      idEstoque: 1,
      custo: 10.9,
      descricao: 'Vidro',
      espessura: 0,
      estoqueMaximo: 10,
      estoqueMinimo: 5,
      localizacao: 'Avenida Padre Arlindo Vieira',
      quantidade: 10);
  test('[TEST] - getListaItensEstoque', () {
    expect(cadastroEstoqueRepository.listaItensEstoque.length, 1);
  });

  test('[TEST] - salvarItem', () async {
    await cadastroEstoqueRepository.salvarItem(itemAdicional);
    expect(cadastroEstoqueRepository.listaItensEstoque.length, 2);
  });

  test('[TEST] - atualizarItem', () async {
    await cadastroEstoqueRepository.atualizarItem(itemAdicional);
    expect(cadastroEstoqueRepository.listaItensEstoque[0].custo, 10.9);
    expect(cadastroEstoqueRepository.listaItensEstoque.length, 1);
  });
}
