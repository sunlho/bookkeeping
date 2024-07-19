// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on _TaskStore, Store {
  late final _$tasksAtom = Atom(name: '_TaskStore.tasks', context: context);

  @override
  List<TaskItem> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  bool _tasksIsInitialized = false;

  @override
  set tasks(List<TaskItem> value) {
    _$tasksAtom.reportWrite(value, _tasksIsInitialized ? super.tasks : null,
        () {
      super.tasks = value;
      _tasksIsInitialized = true;
    });
  }

  late final _$currentAtom = Atom(name: '_TaskStore.current', context: context);

  @override
  TaskItem? get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  bool _currentIsInitialized = false;

  @override
  set current(TaskItem? value) {
    _$currentAtom
        .reportWrite(value, _currentIsInitialized ? super.current : null, () {
      super.current = value;
      _currentIsInitialized = true;
    });
  }

  late final _$createTaskAsyncAction =
      AsyncAction('_TaskStore.createTask', context: context);

  @override
  Future<bool> createTask(Map<String, dynamic> task) {
    return _$createTaskAsyncAction.run(() => super.createTask(task));
  }

  late final _$queryTaskAsyncAction =
      AsyncAction('_TaskStore.queryTask', context: context);

  @override
  Future<bool> queryTask([bool toast = false]) {
    return _$queryTaskAsyncAction.run(() => super.queryTask(toast));
  }

  late final _$getDetailAsyncAction =
      AsyncAction('_TaskStore.getDetail', context: context);

  @override
  Future<bool> getDetail(String id) {
    return _$getDetailAsyncAction.run(() => super.getDetail(id));
  }

  late final _$deleteTaskAsyncAction =
      AsyncAction('_TaskStore.deleteTask', context: context);

  @override
  Future<bool> deleteTask(String id) {
    return _$deleteTaskAsyncAction.run(() => super.deleteTask(id));
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
current: ${current}
    ''';
  }
}
