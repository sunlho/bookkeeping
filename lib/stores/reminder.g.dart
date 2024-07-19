// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReminderStore on _ReminderStore, Store {
  late final _$reminderAtom =
      Atom(name: '_ReminderStore.reminder', context: context);

  @override
  List<ReminderItem> get reminder {
    _$reminderAtom.reportRead();
    return super.reminder;
  }

  @override
  set reminder(List<ReminderItem> value) {
    _$reminderAtom.reportWrite(value, super.reminder, () {
      super.reminder = value;
    });
  }

  late final _$currentAtom =
      Atom(name: '_ReminderStore.current', context: context);

  @override
  ReminderItem? get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(ReminderItem? value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  late final _$createReminderAsyncAction =
      AsyncAction('_ReminderStore.createReminder', context: context);

  @override
  Future<bool> createReminder(Map<String, dynamic> reminder) {
    return _$createReminderAsyncAction
        .run(() => super.createReminder(reminder));
  }

  late final _$queryReminderAsyncAction =
      AsyncAction('_ReminderStore.queryReminder', context: context);

  @override
  Future<bool> queryReminder([bool toast = false]) {
    return _$queryReminderAsyncAction.run(() => super.queryReminder(toast));
  }

  late final _$deleteReminderAsyncAction =
      AsyncAction('_ReminderStore.deleteReminder', context: context);

  @override
  Future<bool> deleteReminder(String id) {
    return _$deleteReminderAsyncAction.run(() => super.deleteReminder(id));
  }

  late final _$getDetailAsyncAction =
      AsyncAction('_ReminderStore.getDetail', context: context);

  @override
  Future<bool> getDetail(String id) {
    return _$getDetailAsyncAction.run(() => super.getDetail(id));
  }

  @override
  String toString() {
    return '''
reminder: ${reminder},
current: ${current}
    ''';
  }
}
