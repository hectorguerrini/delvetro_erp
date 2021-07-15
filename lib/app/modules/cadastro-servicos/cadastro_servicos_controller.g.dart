// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_servicos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroServicosController on CadastroServicosControllerBase, Store {
  final _$listaServicosEstoqueAtom =
      Atom(name: 'CadastroServicosControllerBase.listaServicosEstoque');

  @override
  List<ServicosModel> get listaServicosEstoque {
    _$listaServicosEstoqueAtom.reportRead();
    return super.listaServicosEstoque;
  }

  @override
  set listaServicosEstoque(List<ServicosModel> value) {
    _$listaServicosEstoqueAtom.reportWrite(value, super.listaServicosEstoque,
        () {
      super.listaServicosEstoque = value;
    });
  }

  final _$servicosEstoqueAtom =
      Atom(name: 'CadastroServicosControllerBase.servicosEstoque');

  @override
  ServicosModel get servicosEstoque {
    _$servicosEstoqueAtom.reportRead();
    return super.servicosEstoque;
  }

  @override
  set servicosEstoque(ServicosModel value) {
    _$servicosEstoqueAtom.reportWrite(value, super.servicosEstoque, () {
      super.servicosEstoque = value;
    });
  }

  final _$getListaServicosAsyncAction =
      AsyncAction('CadastroServicosControllerBase.getListaServicos');

  @override
  Future<void> getListaServicos() {
    return _$getListaServicosAsyncAction.run(() => super.getListaServicos());
  }

  final _$salvarServicoAsyncAction =
      AsyncAction('CadastroServicosControllerBase.salvarServico');

  @override
  Future<void> salvarServico() {
    return _$salvarServicoAsyncAction.run(() => super.salvarServico());
  }

  final _$limparTextoAsyncAction =
      AsyncAction('CadastroServicosControllerBase.limparTexto');

  @override
  Future<void> limparTexto() {
    return _$limparTextoAsyncAction.run(() => super.limparTexto());
  }

  final _$CadastroServicosControllerBaseActionController =
      ActionController(name: 'CadastroServicosControllerBase');

  @override
  void setTipoServicoEnum(TipoServicoEnum value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setTipoServicoEnum');
    try {
      return super.setTipoServicoEnum(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnidadeCusto(UnidadeItemEnum value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setUnidadeCusto');
    try {
      return super.setUnidadeCusto(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCusto(double value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setCusto');
    try {
      return super.setCusto(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrazo(String value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setPrazo');
    try {
      return super.setPrazo(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObservacao(String value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setObservacao');
    try {
      return super.setObservacao(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescricao(String value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setExterno(String value) {
    final _$actionInfo = _$CadastroServicosControllerBaseActionController
        .startAction(name: 'CadastroServicosControllerBase.setExterno');
    try {
      return super.setExterno(value);
    } finally {
      _$CadastroServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaServicosEstoque: ${listaServicosEstoque},
servicosEstoque: ${servicosEstoque}
    ''';
  }
}
