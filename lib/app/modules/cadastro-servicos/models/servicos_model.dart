import 'package:delvetro_erp/app/modules/cadastro-servicos/enumerate/tipo_servico_enum.dart';

class ServicosModel {
  final int? idServico;
  final TipoServicoEnum? tipoServicoEnum;
  final String unidadeCusto;
  final double custo;
  final String? prazo;
  final String? observacao;
  final int? idBeneficiado;
  final String descricao;
  final String externo;

  ServicosModel(
      {this.idServico,
      this.tipoServicoEnum,
      required this.unidadeCusto,
      required this.custo,
      this.prazo,
      this.observacao,
      this.idBeneficiado,
      required this.descricao,
      required this.externo});

  factory ServicosModel.newInstance() {
    return ServicosModel(
        idBeneficiado: null,
        idServico: null,
        observacao: '',
        prazo: '',
        tipoServicoEnum: null,
        unidadeCusto: '',
        custo: 0,
        descricao: '',
        externo: '');
  }

  ServicosModel copyWith({
    int? idServico,
    TipoServicoEnum? tipoServicoEnum,
    String? unidadeCusto,
    double? custo,
    String? prazo,
    String? observacao,
    int? idBeneficiado,
    String? descricao,
    String? externo,
  }) {
    return ServicosModel(
      idServico: idServico ?? this.idServico,
      descricao: descricao ?? this.descricao,
      tipoServicoEnum: tipoServicoEnum ?? this.tipoServicoEnum,
      unidadeCusto: unidadeCusto ?? this.unidadeCusto,
      prazo: prazo ?? this.prazo,
      observacao: observacao ?? this.observacao,
      idBeneficiado: idBeneficiado ?? this.idBeneficiado,
      externo: externo ?? this.externo,
      custo: custo ?? this.custo,
    );
  }
}
