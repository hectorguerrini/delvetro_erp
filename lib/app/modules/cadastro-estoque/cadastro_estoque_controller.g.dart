// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_estoque_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroEstoqueController on CadastroEstoqueControllerBase, Store {
  final _$itensEstoqueAtom =
      Atom(name: 'CadastroEstoqueControllerBase.itensEstoque');

  @override
  ItensEstoqueModel get itensEstoque {
    _$itensEstoqueAtom.reportRead();
    return super.itensEstoque;
  }

  @override
  set itensEstoque(ItensEstoqueModel value) {
    _$itensEstoqueAtom.reportWrite(value, super.itensEstoque, () {
      super.itensEstoque = value;
    });
  }

  final _$listaItensEstoqueAtom =
      Atom(name: 'CadastroEstoqueControllerBase.listaItensEstoque');

  @override
  List<ItensEstoqueModel> get listaItensEstoque {
    _$listaItensEstoqueAtom.reportRead();
    return super.listaItensEstoque;
  }

  @override
  set listaItensEstoque(List<ItensEstoqueModel> value) {
    _$listaItensEstoqueAtom.reportWrite(value, super.listaItensEstoque, () {
      super.listaItensEstoque = value;
    });
  }

  final _$getListaItensAsyncAction =
      AsyncAction('CadastroEstoqueControllerBase.getListaItens');

  @override
  Future<void> getListaItens() {
    return _$getListaItensAsyncAction.run(() => super.getListaItens());
  }

  final _$salvarItemAsyncAction =
      AsyncAction('CadastroEstoqueControllerBase.salvarItem');

  @override
  Future<void> salvarItem() {
    return _$salvarItemAsyncAction.run(() => super.salvarItem());
  }

  @override
  String toString() {
    return '''
itensEstoque: ${itensEstoque},
listaItensEstoque: ${listaItensEstoque}
    ''';
  }
}
