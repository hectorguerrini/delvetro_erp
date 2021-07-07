// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_cliente_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroClienteStore on _CadastroStoreBase, Store {
  final _$clienteAtom = Atom(name: '_CadastroStoreBase.cliente');

  @override
  ClienteModel get cliente {
    _$clienteAtom.reportRead();
    return super.cliente;
  }

  @override
  set cliente(ClienteModel value) {
    _$clienteAtom.reportWrite(value, super.cliente, () {
      super.cliente = value;
    });
  }

  final _$salvarItemAsyncAction = AsyncAction('_CadastroStoreBase.salvarItem');

  @override
  Future<void> salvarCliente() {
    return _$salvarItemAsyncAction.run(() => super.salvarCliente());
  }

  @override
  String toString() {
    return '''
cliente: ${cliente}
    ''';
  }
}
