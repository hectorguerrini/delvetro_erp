import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/repository/cadastro_servicos_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_servico_controller.g.dart';


class CadastroServicoController = CadastroServicoControllerBase
    with _$CadastroServicoController;

abstract class CadastroServicoControllerBase with Store {
  final ICadastroServicosRepository repository;

  CadastroServicoControllerBase(this.repository) {
    getListaServicos();
  };

  @observable
  List<ServicosModel> listaServicosEstoque = [];

  @observable
  ServicosModel servicosEstoque = ServicosModel.newInstance();
  
  @action
  Future<void> getListaServicos() async {
    listaServicosEstoque = await repository.getListaServicos();
  }

    @action
  Future<void> salvarItem() async {
      await repository.salvarItem(servicosEstoque);
  }

  @action
  Future<void> limparTexto() async {
    servicosEstoque = ServicosModel.newInstance();
  }


  @action
  void tipoServicoEnum(TipoServicoEnum value) {
    servicosEstoque = servicosEstoque.copyWith(tipoServicoEnum: value);
  }

  @action
  void setUnidadeCusto(String value) {
    servicosEstoque = servicosEstoque.copyWith(unidadeCusto: value);
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
  void setExterno(String value) {
    servicosEstoque = servicosEstoque.copyWith(externo: value);
  }
}
