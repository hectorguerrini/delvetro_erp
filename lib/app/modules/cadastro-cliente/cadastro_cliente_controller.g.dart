// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_cliente_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroClienteController on _CadastroControllerBase, Store {
  Computed<List<GenericFieldsModel>>? _$listaNomeComputed;

  @override
  List<GenericFieldsModel> get listaNome => (_$listaNomeComputed ??=
          Computed<List<GenericFieldsModel>>(() => super.listaNome,
              name: '_CadastroControllerBase.listaNome'))
      .value;

  final _$clienteAtom = Atom(name: '_CadastroControllerBase.cliente');

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

  final _$listaClientesAtom =
      Atom(name: '_CadastroControllerBase.listaClientes');

  @override
  List<ClienteModel> get listaClientes {
    _$listaClientesAtom.reportRead();
    return super.listaClientes;
  }

  @override
  set listaClientes(List<ClienteModel> value) {
    _$listaClientesAtom.reportWrite(value, super.listaClientes, () {
      super.listaClientes = value;
    });
  }

  final _$getListaClientesAsyncAction =
      AsyncAction('_CadastroControllerBase.getListaClientes');

  @override
  Future<void> getListaClientes() {
    return _$getListaClientesAsyncAction.run(() => super.getListaClientes());
  }

  final _$salvarClienteAsyncAction =
      AsyncAction('_CadastroControllerBase.salvarCliente');

  @override
  Future<void> salvarCliente() {
    return _$salvarClienteAsyncAction.run(() => super.salvarCliente());
  }

  final _$limparTextoAsyncAction =
      AsyncAction('_CadastroControllerBase.limparTexto');

  @override
  Future<void> limparTexto() {
    return _$limparTextoAsyncAction.run(() => super.limparTexto());
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  void setNome(String nome) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setNome');
    try {
      return super.setNome(nome);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRazaoSocial(String razaoSocial) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setRazaoSocial');
    try {
      return super.setRazaoSocial(razaoSocial);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpf(String cpf) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setCpf');
    try {
      return super.setCpf(cpf);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNomeContato(String nomeContato) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setNomeContato');
    try {
      return super.setNomeContato(nomeContato);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRgContato(String rgContato) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setRgContato');
    try {
      return super.setRgContato(rgContato);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLojista(LojistaEnum? lojista) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setLojista');
    try {
      return super.setLojista(lojista);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCep(String cep) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setCep');
    try {
      return super.setCep(cep);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndereco(String endereco) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEndereco');
    try {
      return super.setEndereco(endereco);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumero(String numero) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setNumero');
    try {
      return super.setNumero(numero);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComplemento(String? complemento) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setComplemento');
    try {
      return super.setComplemento(complemento);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBairro(String bairro) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setBairro');
    try {
      return super.setBairro(bairro);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCidade(String cidade) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setCidade');
    try {
      return super.setCidade(cidade);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstado(String estado) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEstado');
    try {
      return super.setEstado(estado);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectNome(int id) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.selectNome');
    try {
      return super.selectNome(id);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cliente: ${cliente},
listaClientes: ${listaClientes},
listaNome: ${listaNome}
    ''';
  }
}
