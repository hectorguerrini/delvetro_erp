import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/models/itens_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cadastro_estoque_controller_test.mocks.dart';

@GenerateMocks([ICadastroEstoqueRepository])
void main() {
  ICadastroEstoqueRepository repository = MockICadastroEstoqueRepository();
  late CadastroEstoqueController cadastroEstoqueController;
  var array = [
    ItensEstoqueModel(descricao: '', estoqueMinimo: 5, estoqueMaximo: 10)
  ];

  setUpAll(() {
    when(repository.getListaItensEstoque()).thenAnswer((_) async => array);
    cadastroEstoqueController = CadastroEstoqueController(repository);
  });

  test('[TEST] - getListaItens', () {
    expect(cadastroEstoqueController.listaItensEstoque, array);
  });

  test('[TEST] - salvarItem args idEstoque diferente null', () async {
    var itemAdicional = ItensEstoqueModel(
        descricao: '',
        estoqueMinimo: 5,
        estoqueMaximo: 10,
        idEstoque: 1,
        localizacao: 'sp');
    cadastroEstoqueController.itensEstoque = itemAdicional;
    when(repository.atualizarItem(itemAdicional)).thenAnswer((_) async {});
    await cadastroEstoqueController.salvarItem();
    verify(repository.atualizarItem(itemAdicional)).called(1);
  });

  test('[TEST] - salvarItem args idEstoque igual null', () async {
    var itemAdicional = ItensEstoqueModel(
        descricao: '',
        estoqueMinimo: 5,
        estoqueMaximo: 10,
        idEstoque: null,
        localizacao: 'sp');
    cadastroEstoqueController.itensEstoque = itemAdicional;
    when(repository.salvarItem(itemAdicional)).thenAnswer((_) async {});
    await cadastroEstoqueController.salvarItem();
    verify(repository.salvarItem(itemAdicional)).called(1);
  });
}
