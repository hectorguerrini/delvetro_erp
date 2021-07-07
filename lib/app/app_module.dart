import 'package:delvetro_erp/app/modules/cadastro_cliente/repositories/cadastro_cliente_repository.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_cliente_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ClienteCadastroRepository()),
    Bind.lazySingleton((i) => CadastroClienteController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
