import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_cliente_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_cliente_module.dart';

void main() {
  setUpAll(() {
    initModule(CadastroClienteModule());
  });
  test('Teste de injeção do Cadastro Cliente Controller', () {
    var cadastroClienteController = Modular.get<CadastroClienteController>();
  });
}
