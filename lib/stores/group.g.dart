// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GroupStore on _GroupStore, Store {
  late final _$groupsAtom = Atom(name: '_GroupStore.groups', context: context);

  @override
  List<GroupItem> get groups {
    _$groupsAtom.reportRead();
    return super.groups;
  }

  @override
  set groups(List<GroupItem> value) {
    _$groupsAtom.reportWrite(value, super.groups, () {
      super.groups = value;
    });
  }

  late final _$currentAtom =
      Atom(name: '_GroupStore.current', context: context);

  @override
  GroupItem? get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(GroupItem? value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  late final _$createGroupAsyncAction =
      AsyncAction('_GroupStore.createGroup', context: context);

  @override
  Future<bool> createGroup(Map<String, dynamic> group) {
    return _$createGroupAsyncAction.run(() => super.createGroup(group));
  }

  late final _$queryGroupsAsyncAction =
      AsyncAction('_GroupStore.queryGroups', context: context);

  @override
  Future<bool> queryGroups([bool toast = false]) {
    return _$queryGroupsAsyncAction.run(() => super.queryGroups(toast));
  }

  late final _$deleteReminderAsyncAction =
      AsyncAction('_GroupStore.deleteReminder', context: context);

  @override
  Future<bool> deleteReminder(String id) {
    return _$deleteReminderAsyncAction.run(() => super.deleteReminder(id));
  }

  late final _$getDetailAsyncAction =
      AsyncAction('_GroupStore.getDetail', context: context);

  @override
  Future<bool> getDetail(String id) {
    return _$getDetailAsyncAction.run(() => super.getDetail(id));
  }

  @override
  String toString() {
    return '''
groups: ${groups},
current: ${current}
    ''';
  }
}
