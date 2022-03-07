// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContadorStore on _ContadorStore, Store {
  Computed<String>? _$emailSenhaComputed;

  @override
  String get emailSenha =>
      (_$emailSenhaComputed ??= Computed<String>(() => super.emailSenha,
              name: '_ContadorStore.emailSenha'))
          .value;
  Computed<bool>? _$fomularioValidadoComputed;

  @override
  bool get fomularioValidado => (_$fomularioValidadoComputed ??= Computed<bool>(
          () => super.fomularioValidado,
          name: '_ContadorStore.fomularioValidado'))
      .value;

  final _$emailAtom = Atom(name: '_ContadorStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_ContadorStore.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$usuarioLogadoAtom = Atom(name: '_ContadorStore.usuarioLogado');

  @override
  bool get usuarioLogado {
    _$usuarioLogadoAtom.reportRead();
    return super.usuarioLogado;
  }

  @override
  set usuarioLogado(bool value) {
    _$usuarioLogadoAtom.reportWrite(value, super.usuarioLogado, () {
      super.usuarioLogado = value;
    });
  }

  final _$carregandoAtom = Atom(name: '_ContadorStore.carregando');

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  final _$logarAsyncAction = AsyncAction('_ContadorStore.logar');

  @override
  Future<void> logar() {
    return _$logarAsyncAction.run(() => super.logar());
  }

  final _$_ContadorStoreActionController =
      ActionController(name: '_ContadorStore');

  @override
  void setEmail(dynamic valor) {
    final _$actionInfo = _$_ContadorStoreActionController.startAction(
        name: '_ContadorStore.setEmail');
    try {
      return super.setEmail(valor);
    } finally {
      _$_ContadorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(dynamic valor) {
    final _$actionInfo = _$_ContadorStoreActionController.startAction(
        name: '_ContadorStore.setSenha');
    try {
      return super.setSenha(valor);
    } finally {
      _$_ContadorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
usuarioLogado: ${usuarioLogado},
carregando: ${carregando},
emailSenha: ${emailSenha},
fomularioValidado: ${fomularioValidado}
    ''';
  }
}
