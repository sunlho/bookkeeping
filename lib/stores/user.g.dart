// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStore, Store {
  late final _$loginedAtom = Atom(name: '_UserStore.logined', context: context);

  @override
  bool get logined {
    _$loginedAtom.reportRead();
    return super.logined;
  }

  @override
  set logined(bool value) {
    _$loginedAtom.reportWrite(value, super.logined, () {
      super.logined = value;
    });
  }

  late final _$userInfoAtom =
      Atom(name: '_UserStore.userInfo', context: context);

  @override
  User? get userInfo {
    _$userInfoAtom.reportRead();
    return super.userInfo;
  }

  bool _userInfoIsInitialized = false;

  @override
  set userInfo(User? value) {
    _$userInfoAtom
        .reportWrite(value, _userInfoIsInitialized ? super.userInfo : null, () {
      super.userInfo = value;
      _userInfoIsInitialized = true;
    });
  }

  late final _$billCountAtom =
      Atom(name: '_UserStore.billCount', context: context);

  @override
  UserBillCount? get billCount {
    _$billCountAtom.reportRead();
    return super.billCount;
  }

  bool _billCountIsInitialized = false;

  @override
  set billCount(UserBillCount? value) {
    _$billCountAtom.reportWrite(
        value, _billCountIsInitialized ? super.billCount : null, () {
      super.billCount = value;
      _billCountIsInitialized = true;
    });
  }

  late final _$ensureLoginAsyncAction =
      AsyncAction('_UserStore.ensureLogin', context: context);

  @override
  Future<bool> ensureLogin() {
    return _$ensureLoginAsyncAction.run(() => super.ensureLogin());
  }

  late final _$loginAsyncAction =
      AsyncAction('_UserStore.login', context: context);

  @override
  Future<bool> login(String mobile, String password, [String device = '']) {
    return _$loginAsyncAction.run(() => super.login(mobile, password, device));
  }

  late final _$validateCodeAsyncAction =
      AsyncAction('_UserStore.validateCode', context: context);

  @override
  Future<bool> validateCode(String mobile, String code) {
    return _$validateCodeAsyncAction
        .run(() => super.validateCode(mobile, code));
  }

  late final _$registerLoginAsyncAction =
      AsyncAction('_UserStore.registerLogin', context: context);

  @override
  Future<bool> registerLogin(String mobile, String password, String rid,
      [String device = '']) {
    return _$registerLoginAsyncAction
        .run(() => super.registerLogin(mobile, password, rid, device));
  }

  late final _$forgotAsyncAction =
      AsyncAction('_UserStore.forgot', context: context);

  @override
  Future<bool> forgot(String mobile, String password) {
    return _$forgotAsyncAction.run(() => super.forgot(mobile, password));
  }

  late final _$getBillCountAsyncAction =
      AsyncAction('_UserStore.getBillCount', context: context);

  @override
  Future<bool> getBillCount() {
    return _$getBillCountAsyncAction.run(() => super.getBillCount());
  }

  late final _$_UserStoreActionController =
      ActionController(name: '_UserStore', context: context);

  @override
  bool logout() {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.logout');
    try {
      return super.logout();
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
logined: ${logined},
userInfo: ${userInfo},
billCount: ${billCount}
    ''';
  }
}
