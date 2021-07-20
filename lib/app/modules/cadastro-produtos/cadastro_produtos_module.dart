import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/repositories/cadastro_produtos_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_produtos_page.dart';

class CadastroProdutosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroProdutosController(i())),
    Bind.lazySingleton((i) => CadastroProdutosRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => CadastroProdutosPage()),
  ];
}
