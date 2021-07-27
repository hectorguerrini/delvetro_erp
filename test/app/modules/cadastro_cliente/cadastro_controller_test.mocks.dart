// Mocks generated by Mockito 5.0.10 from annotations
// in delvetro_erp/test/app/modules/cadastro_cliente/cadastro_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:delvetro_erp/app/modules/cadastro-cliente/models/cliente_model.dart'
    as _i6;
import 'package:delvetro_erp/app/modules/cadastro-cliente/models/result_cep_model.dart'
    as _i3;
import 'package:delvetro_erp/app/modules/cadastro-cliente/repositories/cadastro_cliente_repository_interface.dart'
    as _i4;
import 'package:delvetro_erp/app/shared/repositories/repository_external.dart'
    as _i7;
import 'package:dio/src/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeDio extends _i1.Fake implements _i2.Dio {}

class _FakeResultCepModel extends _i1.Fake implements _i3.ResultCepModel {}

/// A class which mocks [ICadastroClienteRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockICadastroClienteRepository extends _i1.Mock
    implements _i4.ICadastroClienteRepository {
  MockICadastroClienteRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> salvarCliente(_i6.ClienteModel? cliente) =>
      (super.noSuchMethod(Invocation.method(#salvarCliente, [cliente]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> atualizarCliente(_i6.ClienteModel? cliente) =>
      (super.noSuchMethod(Invocation.method(#atualizarCliente, [cliente]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i5.Future<void>);
  @override
  _i5.Future<List<_i6.ClienteModel>> getListaClientes() =>
      (super.noSuchMethod(Invocation.method(#getListaClientes, []),
              returnValue:
                  Future<List<_i6.ClienteModel>>.value(<_i6.ClienteModel>[]))
          as _i5.Future<List<_i6.ClienteModel>>);
}

/// A class which mocks [RepositoryExternal].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepositoryExternal extends _i1.Mock
    implements _i7.RepositoryExternal {
  MockRepositoryExternal() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get dio =>
      (super.noSuchMethod(Invocation.getter(#dio), returnValue: _FakeDio())
          as _i2.Dio);
  @override
  _i5.Future<_i3.ResultCepModel> getCepExterno(String? cep) =>
      (super.noSuchMethod(Invocation.method(#getCepExterno, [cep]),
              returnValue:
                  Future<_i3.ResultCepModel>.value(_FakeResultCepModel()))
          as _i5.Future<_i3.ResultCepModel>);
}
