import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/cadastro_servicos_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_servicos_controller.dart';
import 'repository/cadastro_servicos_repository.dart';

class CadastroServicosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroServicoController(i())),
    Bind.lazySingleton((i) => CadastroServicosRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => CadastroServicosPage()),
  ];
}
