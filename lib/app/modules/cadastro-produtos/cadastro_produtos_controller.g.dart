// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_produtos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroProdutosController on _CadastroProdutosControllerBase, Store {
  Computed<List<GenericFieldsModel>>? _$listaDescricaoComputed;

  @override
  List<GenericFieldsModel> get listaDescricao => (_$listaDescricaoComputed ??=
          Computed<List<GenericFieldsModel>>(() => super.listaDescricao,
              name: '_CadastroProdutosControllerBase.listaDescricao'))
      .value;
  Computed<List<GenericFieldsModel>>? _$listaServicosComputed;

  @override
  List<GenericFieldsModel> get listaServicos => (_$listaServicosComputed ??=
          Computed<List<GenericFieldsModel>>(() => super.listaServicos,
              name: '_CadastroProdutosControllerBase.listaServicos'))
      .value;

  final _$produtosEstoqueAtom =
      Atom(name: '_CadastroProdutosControllerBase.produtosEstoque');

  @override
  ProdutosModel get produtosEstoque {
    _$produtosEstoqueAtom.reportRead();
    return super.produtosEstoque;
  }

  @override
  set produtosEstoque(ProdutosModel value) {
    _$produtosEstoqueAtom.reportWrite(value, super.produtosEstoque, () {
      super.produtosEstoque = value;
    });
  }

  final _$listagemComposicaoEstoqueAtom =
      Atom(name: '_CadastroProdutosControllerBase.listagemComposicaoEstoque');

  @override
  ListagemComposicaoModel get listagemComposicaoEstoque {
    _$listagemComposicaoEstoqueAtom.reportRead();
    return super.listagemComposicaoEstoque;
  }

  @override
  set listagemComposicaoEstoque(ListagemComposicaoModel value) {
    _$listagemComposicaoEstoqueAtom
        .reportWrite(value, super.listagemComposicaoEstoque, () {
      super.listagemComposicaoEstoque = value;
    });
  }

  final _$tipoServicoEstoqueAtom =
      Atom(name: '_CadastroProdutosControllerBase.tipoServicoEstoque');

  @override
  TipoServicoEstoqueModel get tipoServicoEstoque {
    _$tipoServicoEstoqueAtom.reportRead();
    return super.tipoServicoEstoque;
  }

  @override
  set tipoServicoEstoque(TipoServicoEstoqueModel value) {
    _$tipoServicoEstoqueAtom.reportWrite(value, super.tipoServicoEstoque, () {
      super.tipoServicoEstoque = value;
    });
  }

  final _$listaProdutosEstoqueAtom =
      Atom(name: '_CadastroProdutosControllerBase.listaProdutosEstoque');

  @override
  List<ProdutosModel> get listaProdutosEstoque {
    _$listaProdutosEstoqueAtom.reportRead();
    return super.listaProdutosEstoque;
  }

  @override
  set listaProdutosEstoque(List<ProdutosModel> value) {
    _$listaProdutosEstoqueAtom.reportWrite(value, super.listaProdutosEstoque,
        () {
      super.listaProdutosEstoque = value;
    });
  }

  final _$listaServicosEstoqueAtom =
      Atom(name: '_CadastroProdutosControllerBase.listaServicosEstoque');

  @override
  List<TipoServicoEstoqueModel> get listaServicosEstoque {
    _$listaServicosEstoqueAtom.reportRead();
    return super.listaServicosEstoque;
  }

  @override
  set listaServicosEstoque(List<TipoServicoEstoqueModel> value) {
    _$listaServicosEstoqueAtom.reportWrite(value, super.listaServicosEstoque,
        () {
      super.listaServicosEstoque = value;
    });
  }

  final _$getListaProdutosAsyncAction =
      AsyncAction('_CadastroProdutosControllerBase.getListaProdutos');

  @override
  Future<void> getListaProdutos() {
    return _$getListaProdutosAsyncAction.run(() => super.getListaProdutos());
  }

  final _$getListaServicosAsyncAction =
      AsyncAction('_CadastroProdutosControllerBase.getListaServicos');

  @override
  Future<void> getListaServicos() {
    return _$getListaServicosAsyncAction.run(() => super.getListaServicos());
  }

  final _$salvarProdutoAsyncAction =
      AsyncAction('_CadastroProdutosControllerBase.salvarProduto');

  @override
  Future<void> salvarProduto() {
    return _$salvarProdutoAsyncAction.run(() => super.salvarProduto());
  }

  final _$_CadastroProdutosControllerBaseActionController =
      ActionController(name: '_CadastroProdutosControllerBase');

  @override
  void setDescricaoComposicao(String value) {
    final _$actionInfo =
        _$_CadastroProdutosControllerBaseActionController.startAction(
            name: '_CadastroProdutosControllerBase.setDescricaoComposicao');
    try {
      return super.setDescricaoComposicao(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoComposicao(TipoComposicaoEnum? value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setTipoComposicao');
    try {
      return super.setTipoComposicao(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCustoComposicao(double value) {
    final _$actionInfo =
        _$_CadastroProdutosControllerBaseActionController.startAction(
            name: '_CadastroProdutosControllerBase.setCustoComposicao');
    try {
      return super.setCustoComposicao(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setQuantidadeComposicao(int value) {
    final _$actionInfo =
        _$_CadastroProdutosControllerBaseActionController.startAction(
            name: '_CadastroProdutosControllerBase.setQuantidadeComposicao');
    try {
      return super.setQuantidadeComposicao(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescricao(String value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoItem(TipoItemEnum? value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setTipoItem');
    try {
      return super.setTipoItem(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnidadeItem(UnidadeItemEnum? value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setUnidadeItem');
    try {
      return super.setUnidadeItem(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCusto(double value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setCusto');
    try {
      return super.setCusto(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrecoUnitario(double value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setPrecoUnitario');
    try {
      return super.setPrecoUnitario(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrazo(String value) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.setPrazo');
    try {
      return super.setPrazo(value);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void limparTexto() {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.limparTexto');
    try {
      return super.limparTexto();
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectProduto(int id) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.selectProduto');
    try {
      return super.selectProduto(id);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectComposicao(int id) {
    final _$actionInfo = _$_CadastroProdutosControllerBaseActionController
        .startAction(name: '_CadastroProdutosControllerBase.selectComposicao');
    try {
      return super.selectComposicao(id);
    } finally {
      _$_CadastroProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produtosEstoque: ${produtosEstoque},
listagemComposicaoEstoque: ${listagemComposicaoEstoque},
tipoServicoEstoque: ${tipoServicoEstoque},
listaProdutosEstoque: ${listaProdutosEstoque},
listaServicosEstoque: ${listaServicosEstoque},
listaDescricao: ${listaDescricao},
listaServicos: ${listaServicos}
    ''';
  }
}
