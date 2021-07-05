import 'package:flutter_test/flutter_test.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository.dart';

void main() {
  late CadastroRepository repository;

  setUpAll(() {
    repository = CadastroRepository();
  });
}
