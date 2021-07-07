import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_page.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/repositories/cadastro_estoque_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroEstoqueModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroEstoqueController(i())),
    Bind.lazySingleton((i) => CadastroEstoqueRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CadastroEstoquePage()),
  ];
}
