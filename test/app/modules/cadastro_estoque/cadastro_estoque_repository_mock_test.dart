import 'package:delvetro_erp/app/modules/cadastro-estoque/models/itens_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  late CadastroEstoqueRepository cadastroEstoqueRepository;
  var itemAdicional = ItensEstoqueModel(
      idEstoque: 8,
      custo: 10.9,
      descricao: 'Vidro',
      espessura: 0,
      estoqueMaximo: 10,
      estoqueMinimo: 5,
      localizacao: 'Avenida Padre Arlindo Vieira',
      quantidade: 10);

  setUpAll(() {
    cadastroEstoqueRepository = CadastroEstoqueRepository();
  });

  test('[TEST] - getListaItensEstoque', () {
    expect(cadastroEstoqueRepository.listaItensEstoque.isNotEmpty, true);
  });

  test('[TEST] - salvarItem', () async {
    await cadastroEstoqueRepository.salvarItem(itemAdicional);
    var teste = cadastroEstoqueRepository.listaItensEstoque
        .where((element) => element == itemAdicional)
        .isNotEmpty;
    expect(teste, true);
  });

  test('[TEST] - atualizarItem', () async {
    var itemMock = ItensEstoqueModel(
        idEstoque: 1,
        custo: 10.9,
        descricao: 'Vidro',
        espessura: 0,
        estoqueMaximo: 10,
        estoqueMinimo: 5,
        localizacao: 'Avenida Padre Arlindo Vieira',
        quantidade: 10);
    await cadastroEstoqueRepository.atualizarItem(itemMock);
    var value = cadastroEstoqueRepository.listaItensEstoque
        .where((element) => element.idEstoque == itemMock.idEstoque)
        .single;
    expect(value.custo, 10.9);
  });
}
