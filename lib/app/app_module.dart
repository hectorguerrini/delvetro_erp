import 'package:delvetro_erp/app/modules/cadastro-estoque/cadastro_estoque_module.dart';
import 'package:delvetro_erp/app/modules/cadastro-produtos/cadastro_produtos_module.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/cadastro_servicos_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute(
      '/cadastroEstoque',
      module: CadastroEstoqueModule(),
    ),
    ModuleRoute('/cadastroServicos', module: CadastroServicosModule()),
    ModuleRoute('/cadastroProdutos', module: CadastroProdutosModule())
  ];
}
