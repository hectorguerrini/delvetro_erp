import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/repository/cadastro_servicos_repository.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CadastroServicosRepository cadastroServicosRepository;
  var servicoAdicional = ServicosModel(
      idBeneficiado: 10,
      idServico: 1,
      observacao: 'Não',
      prazo: '10',
      tipoServicoEnum: TipoServicoEnum.OUTROS,
      unidadeItemEnum: UnidadeItemEnum.LINEAR,
      custo: 9.2,
      descricao: 'sim',
      externo: 'sim');

  setUpAll(() {
    cadastroServicosRepository = CadastroServicosRepository();
  });

  test('[TEST] - getListaServicos', () {
    expect(cadastroServicosRepository.listaServicos.isNotEmpty, true);
  });

  test('[TEST] - salvarServico', () async {
    await cadastroServicosRepository.salvarServico(servicoAdicional);
    var teste = cadastroServicosRepository.listaServicos
        .where((element) => element == servicoAdicional)
        .isNotEmpty;
    expect(teste, true);
  });

  test('[TEST] - atualizarServico', () async {
    await cadastroServicosRepository.atualizarServico(servicoAdicional);
    var value = cadastroServicosRepository.listaServicos
        .where((element) => element.idServico == servicoAdicional.idServico)
        .single;
    expect(value.custo, 9.2);
  });
}
