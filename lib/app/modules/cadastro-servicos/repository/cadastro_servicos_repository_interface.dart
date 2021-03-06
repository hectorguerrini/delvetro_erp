import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';

abstract class ICadastroServicosRepository {
  Future salvarServico(ServicosModel servicosModel);
  Future<void> atualizarServico(ServicosModel servicosModel);
  Future<List<ServicosModel>> getListaServicos();
  Future<List<GenericFieldsModel>> getListaBeneficiados();
}
