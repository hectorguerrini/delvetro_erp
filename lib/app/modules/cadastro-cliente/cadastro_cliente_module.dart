import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_page.dart';
import 'package:delvetro_erp/app/shared/repositories/repository_external.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'repositories/cadastro_cliente_repository.dart';

class CadastroClienteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroClienteRepository()),
    Bind.lazySingleton((i) => RepositoryExternal(i.get())),
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => CadastroClienteController(i(), i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CadastroClientePage()),
  ];
}
