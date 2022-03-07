// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_controller.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PrincipalController on _PrincipalController, Store {
  final _$novoItemAtom = Atom(name: '_PrincipalController.novoItem');

  @override
  String get novoItem {
    _$novoItemAtom.reportRead();
    return super.novoItem;
  }

  @override
  set novoItem(String value) {
    _$novoItemAtom.reportWrite(value, super.novoItem, () {
      super.novoItem = value;
    });
  }

  final _$_PrincipalControllerActionController =
      ActionController(name: '_PrincipalController');

  @override
  void setNovoItem(String valor) {
    final _$actionInfo = _$_PrincipalControllerActionController.startAction(
        name: '_PrincipalController.setNovoItem');
    try {
      return super.setNovoItem(valor);
    } finally {
      _$_PrincipalControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionarItem() {
    final _$actionInfo = _$_PrincipalControllerActionController.startAction(
        name: '_PrincipalController.adicionarItem');
    try {
      return super.adicionarItem();
    } finally {
      _$_PrincipalControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
novoItem: ${novoItem}
    ''';
  }
}
