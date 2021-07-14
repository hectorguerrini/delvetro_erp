import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';

import 'cadastro_servicos_repository_interface.dart';

class CadastroServicosRepository implements ICadastroServicosRepository {
  List<ServicosModel> listaServicos = [
    ServicosModel(
      idBeneficiado: 1,
      idServico: 1,
      observacao: 'Deu bom',
      prazo: '10',
      tipoServicoEnum: TipoServicoEnum.BISOTE,
      unidadeCusto: 'RS',
      custo: 10,
      descricao: 'Sim',
      externo: 'dale',
    ),
    ServicosModel(
      idBeneficiado: 2,
      idServico: 1,
      observacao: 'Deu bom',
      prazo: '30',
      tipoServicoEnum: TipoServicoEnum.CORTE,
      unidadeCusto: 'RS',
      custo: 5,
      descricao: 'Sim',
      externo: 'dale',
    ),
    ServicosModel(
      idBeneficiado: 1,
      idServico: 1,
      observacao: 'Deu ruim',
      prazo: '20',
      tipoServicoEnum: TipoServicoEnum.FURO,
      unidadeCusto: 'RS',
      custo: 2,
      descricao: 'Sim',
      externo: 'dale',
    ),
  ];

  @override
  Future salvarItem(ServicosModel servicosModel) async {
    listaServicos.add(servicosModel);
  }

  @override
  Future<List<ServicosModel>> getListaServicos() {
    return Future.value(listaServicos);
  }
}
