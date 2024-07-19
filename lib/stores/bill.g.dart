// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BillStore on _BillStore, Store {
  late final _$createBillAsyncAction =
      AsyncAction('_BillStore.createBill', context: context);

  @override
  Future<bool> createBill(Map<String, dynamic> bill) {
    return _$createBillAsyncAction.run(() => super.createBill(bill));
  }

  late final _$getMonthBillsAsyncAction =
      AsyncAction('_BillStore.getMonthBills', context: context);

  @override
  Future<void> getMonthBills(Map<String, dynamic> param) {
    return _$getMonthBillsAsyncAction.run(() => super.getMonthBills(param));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
