import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_module.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(CadastroEstoqueModule());

  test('[TEST] - Injeção do CadastroEstoqueController', () {
    var cadastroEstoqueController = Modular.get<CadastroEstoqueController>();
    expect(cadastroEstoqueController.repository,
        isInstanceOf<CadastroEstoqueRepository>());
  });

  test('[TEST] - Injeção do CadastroEstoqueRepository', () {
    Modular.get<CadastroEstoqueRepository>();
  });
}
