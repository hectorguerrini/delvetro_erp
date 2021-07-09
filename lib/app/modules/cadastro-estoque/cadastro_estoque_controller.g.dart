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

  final _$limparTextoAsyncAction =
      AsyncAction('CadastroEstoqueControllerBase.limparTexto');

  @override
  Future<void> limparTexto() {
    return _$limparTextoAsyncAction.run(() => super.limparTexto());
  }

  final _$CadastroEstoqueControllerBaseActionController =
      ActionController(name: 'CadastroEstoqueControllerBase');

  @override
  void setDescricao(String value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoItem(TipoItemEnum? value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setTipoItem');
    try {
      return super.setTipoItem(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLocalizacao(String value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setLocalizacao');
    try {
      return super.setLocalizacao(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnidade(UnidadeItemEnum? value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setUnidade');
    try {
      return super.setUnidade(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setQuantidade(int value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setQuantidade');
    try {
      return super.setQuantidade(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstoqueMinimo(int value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setEstoqueMinimo');
    try {
      return super.setEstoqueMinimo(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstoqueMaximo(int value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setEstoqueMaximo');
    try {
      return super.setEstoqueMaximo(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCusto(double value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setCusto');
    try {
      return super.setCusto(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEspessura(double value) {
    final _$actionInfo = _$CadastroEstoqueControllerBaseActionController
        .startAction(name: 'CadastroEstoqueControllerBase.setEspessura');
    try {
      return super.setEspessura(value);
    } finally {
      _$CadastroEstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itensEstoque: ${itensEstoque},
listaItensEstoque: ${listaItensEstoque}
    ''';
  }
}
