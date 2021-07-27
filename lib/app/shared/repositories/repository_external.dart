import 'package:delvetro_erp/app/modules/cadastro-cliente/models/result_cep_model.dart';
import 'package:dio/dio.dart';

class RepositoryExternal {
  final Dio dio;

  RepositoryExternal(this.dio);

  Future<ResultCepModel> getCepExterno(String cep) async {
    try {
      var response = await dio.get('https://viacep.com.br/ws/$cep/json/');
      var endereco =
          ResultCepModel.fromMap(response.data as Map<String, dynamic>);
      return endereco;
    } on DioError catch (error) {
      print(error.response!.statusCode);
      return ResultCepModel(
          bairro: '',
          cep: '',
          complemento: '',
          localidade: '',
          logradouro: '',
          uf: '',
          numero: '');
    }
  }
}
