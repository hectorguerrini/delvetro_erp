import 'package:delvetro_erp/app/modules/cadastro-servicos/cadastro_servicos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/cadastro_servicos_module.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/repository/cadastro_servicos_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(CadastroServicosModule());

  test('[TEST] - Injeção do CadastroServicoController', () {
    var cadastroServicoController = Modular.get<CadastroServicosController>();
    expect(cadastroServicoController.repository,
        isInstanceOf<CadastroServicosRepository>());
  });

  test('[TEST] - Injeção do CadastroServicoRepository', () {
    Modular.get<CadastroServicosRepository>();
  });
}
