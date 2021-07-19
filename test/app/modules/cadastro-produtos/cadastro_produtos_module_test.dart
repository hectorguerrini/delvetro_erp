import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_module.dart';

void main() {
  setUpAll(() {
    initModule(CadastroProdutosModule());
  });
}
