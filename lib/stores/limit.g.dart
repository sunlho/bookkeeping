// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LimitStore on _LimitStore, Store {
  late final _$limitAtom = Atom(name: '_LimitStore.limit', context: context);

  @override
  int get limit {
    _$limitAtom.reportRead();
    return super.limit;
  }

  @override
  set limit(int value) {
    _$limitAtom.reportWrite(value, super.limit, () {
      super.limit = value;
    });
  }

  late final _$setLimitAsyncAction =
      AsyncAction('_LimitStore.setLimit', context: context);

  @override
  Future<HttpResponse<dynamic>> setLimit(int amount) {
    return _$setLimitAsyncAction.run(() => super.setLimit(amount));
  }

  late final _$queryLimitAsyncAction =
      AsyncAction('_LimitStore.queryLimit', context: context);

  @override
  Future<bool> queryLimit([bool toast = false]) {
    return _$queryLimitAsyncAction.run(() => super.queryLimit(toast));
  }

  @override
  String toString() {
    return '''
limit: ${limit}
    ''';
  }
}
