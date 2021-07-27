import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_module.dart';

void main() {
  initModule(CadastroProdutosModule());

  test('[TEST] - Injeção do CadastroProdutosController', () {
    var cadastroProdutosController = Modular.get<CadastroProdutosController>();
    expect(cadastroProdutosController.repository,
        isInstanceOf<CadastroProdutosRepository>());
  });

  test('[TEST] - Injeção do CadastroProdutosRepository', () {
    Modular.get<CadastroProdutosRepository>();
  });
}
