// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseStore on _BaseStore, Store {
  late final _$loadingAtom = Atom(name: '_BaseStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_BaseStoreActionController =
      ActionController(name: '_BaseStore', context: context);

  @override
  bool switchLoading(bool isLoading) {
    final _$actionInfo = _$_BaseStoreActionController.startAction(
        name: '_BaseStore.switchLoading');
    try {
      return super.switchLoading(isLoading);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
