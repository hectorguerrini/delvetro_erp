import 'package:delvetro_erp/app/modules/cadastro_cliente/cadastro_store.dart';
import 'package:delvetro_erp/app/modules/cadastro_cliente/page/cadastro_cliente_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroClienteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroClientePage()),
  ];
}
