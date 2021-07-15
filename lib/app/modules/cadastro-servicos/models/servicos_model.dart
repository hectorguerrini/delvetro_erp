import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_externo_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';

class ServicosModel {
  final int? idServico;
  final TipoServicoEnum? tipoServicoEnum;
  final UnidadeItemEnum? unidadeItemEnum;
  final double custo;
  final String? prazo;
  final String? observacao;
  final int? idBeneficiado;
  final String descricao;
  final TipoExternoEnum? externo;

  ServicosModel(
      {this.idServico,
      this.tipoServicoEnum,
      required this.unidadeItemEnum,
      required this.custo,
      this.prazo,
      this.observacao,
      this.idBeneficiado,
      required this.descricao,
      this.externo});

  factory ServicosModel.newInstance() {
    return ServicosModel(
        idBeneficiado: null,
        idServico: null,
        observacao: '',
        prazo: '',
        tipoServicoEnum: null,
        unidadeItemEnum: null,
        custo: 0,
        descricao: '',
        externo: TipoExternoEnum.NAO);
  }

  ServicosModel copyWith({
    int? idServico,
    TipoServicoEnum? tipoServicoEnum,
    UnidadeItemEnum? unidadeItemEnum,
    double? custo,
    String? prazo,
    String? observacao,
    int? idBeneficiado,
    String? descricao,
    TipoExternoEnum? externo,
  }) {
    return ServicosModel(
      idServico: idServico ?? this.idServico,
      descricao: descricao ?? this.descricao,
      tipoServicoEnum: tipoServicoEnum ?? this.tipoServicoEnum,
      unidadeItemEnum: unidadeItemEnum ?? this.unidadeItemEnum,
      prazo: prazo ?? this.prazo,
      observacao: observacao ?? this.observacao,
      idBeneficiado: idBeneficiado ?? this.idBeneficiado,
      externo: externo ?? this.externo,
      custo: custo ?? this.custo,
    );
  }
}
