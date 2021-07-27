import 'package:delvetro_erp/app/modules/cadastro-servicos/cadastro_servicos_controller.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_externo_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/repository/cadastro_servicos_repository_interface.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cadastro_servicos_controller_test.mocks.dart';

@GenerateMocks([ICadastroServicosRepository])
void main() {
  ICadastroServicosRepository repository = MockICadastroServicosRepository();
  late CadastroServicosController cadastroServicosController;
  var mockListaServicos = [
    ServicosModel(
        observacao: 'Não',
        prazo: '10',
        tipoServicoEnum: TipoServicoEnum.OUTROS,
        unidadeItemEnum: UnidadeItemEnum.LINEAR,
        custo: 9.2,
        descricao: 'sim',
        externo: TipoExternoEnum.NAO)
  ];
  var mockListaBeneficiados = [GenericFieldsModel(caption: 'Delvetro', id: 1)];

  setUpAll(() {
    when(repository.getListaServicos())
        .thenAnswer((_) async => mockListaServicos);
    when(repository.getListaBeneficiados())
        .thenAnswer((_) async => mockListaBeneficiados);
    cadastroServicosController = CadastroServicosController(repository);
  });

  test('[TEST] - get listaDescricao', () {
    var mockListaDescricao = cadastroServicosController.listaDescricao;
    expect(mockListaDescricao.isNotEmpty, true);
  });

  test('[TEST] - setTipoServicoEnum', () {
    var teste = TipoServicoEnum.TEMPERERA;
    cadastroServicosController.setTipoServicoEnum(teste);
    expect(cadastroServicosController.servicosEstoque.tipoServicoEnum, teste);
  });

  test('[TEST] - setUnidadeCusto', () {
    var teste = UnidadeItemEnum.METROQUADRADO;
    cadastroServicosController.setUnidadeCusto(teste);
    expect(cadastroServicosController.servicosEstoque.unidadeItemEnum, teste);
  });

  test('[TEST] - setCusto', () {
    var teste = 90.2;
    cadastroServicosController.setCusto(teste);
    expect(cadastroServicosController.servicosEstoque.custo, teste);
  });

  test('[TEST] - setPrazo', () {
    var teste = '28-12-1999';
    cadastroServicosController.setPrazo(teste);
    expect(cadastroServicosController.servicosEstoque.prazo, teste);
  });

  test('[TEST] - setObservacao', () {
    var teste = 'Exito';
    cadastroServicosController.setObservacao(teste);
    expect(cadastroServicosController.servicosEstoque.observacao, teste);
  });

  test('[TEST] - setDescricao', () {
    var teste = 'teste1';
    cadastroServicosController.setDescricao(teste);
    expect(cadastroServicosController.servicosEstoque.descricao, teste);
  });

  test('[TEST] - setExterno', () {
    var teste = TipoExternoEnum.SIM;
    cadastroServicosController.setExterno(teste);
    expect(cadastroServicosController.servicosEstoque.externo, teste);
  });

  test('[TEST] - getListaServicos', () {
    expect(cadastroServicosController.listaServicosEstoque, mockListaServicos);
  });

  test('[TEST] - getListaBeneficiados', () {
    expect(cadastroServicosController.listaBeneficiados, mockListaBeneficiados);
  });

  test('[TEST] - salvarServico args idServico diferente null', () async {
    var servicoAdicional = ServicosModel(
        idBeneficiado: 10,
        idServico: 1,
        observacao: 'Não',
        prazo: '10',
        tipoServicoEnum: TipoServicoEnum.OUTROS,
        unidadeItemEnum: UnidadeItemEnum.LINEAR,
        custo: 15,
        descricao: 'sim',
        externo: TipoExternoEnum.SIM);
    cadastroServicosController.servicosEstoque = servicoAdicional;
    when(repository.atualizarServico(servicoAdicional))
        .thenAnswer((_) async {});
    await cadastroServicosController.salvarServico();
    verify(repository.atualizarServico(servicoAdicional)).called(1);
  });

  test('[TEST] - salvarServico args idServico igual null', () async {
    var servicoAdicional = ServicosModel(
        idBeneficiado: 10,
        idServico: null,
        observacao: 'Não',
        prazo: '10',
        tipoServicoEnum: TipoServicoEnum.OUTROS,
        unidadeItemEnum: UnidadeItemEnum.LINEAR,
        custo: 20,
        descricao: 'sim',
        externo: TipoExternoEnum.SIM);
    cadastroServicosController.servicosEstoque = servicoAdicional;
    when(repository.salvarServico(servicoAdicional)).thenAnswer((_) async {});
    await cadastroServicosController.salvarServico();
    verify(repository.salvarServico(servicoAdicional)).called(1);
  });

  test('[TEST] - limparTexto', () async {
    var servicoAdicional = ServicosModel(
        idBeneficiado: 10,
        idServico: 1,
        observacao: 'Não',
        prazo: '10',
        tipoServicoEnum: TipoServicoEnum.OUTROS,
        unidadeItemEnum: UnidadeItemEnum.LINEAR,
        custo: 20,
        descricao: 'sim',
        externo: TipoExternoEnum.SIM);
    cadastroServicosController.servicosEstoque = servicoAdicional;
    cadastroServicosController.limparTexto();
    expect(cadastroServicosController.servicosEstoque.descricao, '');
    expect(cadastroServicosController.servicosEstoque.idServico, null);
  });
}
