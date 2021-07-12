import 'package:delvetro_erp/app/modules/cadastro-estoque/models/itens_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository.dart';

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
    var teste = cadastroEstoqueRepository.listaItensEstoque
        .where((element) => element == itemAdicional)
        .isNotEmpty;
    expect(teste, true);
  });

  test('[TEST] - atualizarItem', () async {
    await cadastroEstoqueRepository.atualizarItem(itemAdicional);
    var value = cadastroEstoqueRepository.listaItensEstoque
        .where((element) => element.idEstoque == itemAdicional.idEstoque)
        .single;
    expect(value.custo, 10.9);
  });
}
