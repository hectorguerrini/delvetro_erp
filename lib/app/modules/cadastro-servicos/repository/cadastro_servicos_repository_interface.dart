import 'package:delvetro_erp/app/modules/cadastro-servicos/models/servicos_model.dart';

abstract class ICadastroServicosRepository {
  Future salvarItem(ServicosModel servicosModel);
  Future<List<ServicosModel>> getListaServicos();
}
