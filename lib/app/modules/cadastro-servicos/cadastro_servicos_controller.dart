import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/repository/cadastro_servicos_repository_interface.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:mobx/mobx.dart';

import 'enumerate/tipo_externo_enum.dart';

part 'cadastro_servicos_controller.g.dart';

class CadastroServicosController = CadastroServicosControllerBase
    with _$CadastroServicosController;

abstract class CadastroServicosControllerBase with Store {
  final ICadastroServicosRepository repository;

  CadastroServicosControllerBase(this.repository) {
    getListaServicos();
    getListaBeneficiados();
  }

  @observable
  List<ServicosModel> listaServicosEstoque = [];

  @observable
  List<GenericFieldsModel> listaBeneficiados = [];

  @observable
  ServicosModel servicosEstoque = ServicosModel.newInstance();

  @computed
  List<GenericFieldsModel> get listaDescricao => listaServicosEstoque
      .map((e) => GenericFieldsModel(caption: e.descricao, id: e.idServico))
      .toList();

  @action
  Future<void> getListaServicos() async {
    listaServicosEstoque = await repository.getListaServicos();
  }

  @action
  Future<void> getListaBeneficiados() async {
    listaBeneficiados = await repository.getListaBeneficiados();
  }

  @action
  Future<void> salvarServico() async {
    if (servicosEstoque.idServico != null) {
      await repository.atualizarServico(servicosEstoque);
    } else {
      await repository.salvarServico(servicosEstoque);
    }
    limparTexto();
  }

  @action
  void limparTexto() {
    servicosEstoque = ServicosModel.newInstance();
  }

  @action
  void setTipoServicoEnum(TipoServicoEnum? value) {
    servicosEstoque = servicosEstoque.copyWith(tipoServicoEnum: value);
  }

  @action
  void setUnidadeCusto(UnidadeItemEnum? value) {
    servicosEstoque = servicosEstoque.copyWith(unidadeItemEnum: value);
  }

  @action
  void setCusto(double value) {
    servicosEstoque = servicosEstoque.copyWith(custo: value);
  }

  @action
  void setPrazo(String value) {
    servicosEstoque = servicosEstoque.copyWith(prazo: value);
  }

  @action
  void setObservacao(String value) {
    servicosEstoque = servicosEstoque.copyWith(observacao: value);
  }

  @action
  void setDescricao(String value) {
    servicosEstoque = servicosEstoque.copyWith(descricao: value);
  }

  @action
  void setExterno(TipoExternoEnum? value) {
    servicosEstoque = servicosEstoque.copyWith(externo: value);
  }

  @action
  void setBeneficiado(int? value) {
    if (value != null) {
      servicosEstoque = servicosEstoque.copyWith(idBeneficiado: value);
    }
  }

  @action
  void selectServico(int id) {
    servicosEstoque =
        listaServicosEstoque.firstWhere((element) => element.idServico == id);
  }
}
