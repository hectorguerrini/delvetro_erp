import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_module.dart';

void main() {
  initModule(CadastroClienteModule());

  test('[TEST] - Injeção do CadastroClienteController', () {
    var cadastroClienteController = Modular.get<CadastroClienteController>();
    expect(cadastroClienteController.repository,
        isInstanceOf<CadastroClienteRepository>());
  });

  test('[TEST] - Injeção do CadastroClienteRepository', () {
    Modular.get<CadastroClienteRepository>();
  });
}
