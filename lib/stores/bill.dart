import 'package:bill/api.dart';
import 'package:bill/bean/bill.dart';
import 'package:bill/http/http-util.dart';
import 'package:bill/stores/base.dart';
import 'package:mobx/mobx.dart';

part 'bill.g.dart';

class BillStore = _BillStore with _$BillStore;

abstract class _BillStore extends BaseStore with Store {
  List<BillItem> homeBills = [];

  @action
  Future<bool> createBill(Map<String, dynamic> bill) async {
    return true;
  }

  @action
  Future<void> getMonthBills(Map<String, dynamic> param) async {}
}
