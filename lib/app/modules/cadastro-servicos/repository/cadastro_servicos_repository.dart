import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';

import 'cadastro_servicos_repository_interface.dart';

class CadastroServicosRepository implements ICadastroServicosRepository {
  List<ServicosModel> listaServicos = [
    ServicosModel(
      idBeneficiado: 1,
      idServico: 1,
      observacao: 'Deu bom',
      prazo: '10',
      tipoServicoEnum: TipoServicoEnum.BISOTE,
      unidadeItemEnum: UnidadeItemEnum.LINEAR,
      custo: 10,
      descricao: 'Sim',
      externo: 'dale',
    ),
    ServicosModel(
      idBeneficiado: 2,
      idServico: 2,
      observacao: 'Deu bom',
      prazo: '30',
      tipoServicoEnum: TipoServicoEnum.CORTE,
      unidadeItemEnum: UnidadeItemEnum.UNITARIO,
      custo: 5,
      descricao: 'Sim',
      externo: 'dale',
    ),
    ServicosModel(
      idBeneficiado: 3,
      idServico: 3,
      observacao: 'Deu ruim',
      prazo: '20',
      tipoServicoEnum: TipoServicoEnum.FURO,
      unidadeItemEnum: UnidadeItemEnum.METROQUADRADO,
      custo: 2,
      descricao: 'Sim',
      externo: 'dale',
    ),
  ];

  @override
  Future salvarServico(ServicosModel servicosModel) async {
    listaServicos.add(servicosModel);
  }

  @override
  Future<List<ServicosModel>> getListaServicos() {
    return Future.value(listaServicos);
  }

  @override
  Future<void> atualizarServico(ServicosModel servicosModel) async {
    var servicosEstoqueAlterado = servicosModel;
    for (var i = 0; i < listaServicos.length; i++) {
      if (servicosEstoqueAlterado.idServico == listaServicos[i].idServico) {
        listaServicos[i] = servicosEstoqueAlterado;
      }
    }
  }
}
