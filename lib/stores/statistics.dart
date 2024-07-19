import 'package:bill/api.dart';
import 'package:bill/bean/statistics.dart';
import 'package:bill/http/http-util.dart';
import 'package:bill/stores/base.dart';
import 'package:mobx/mobx.dart';

part 'statistics.g.dart';

class StatisticsStore = _StatisticsStore with _$StatisticsStore;

abstract class _StatisticsStore extends BaseStore with Store {
  @observable
  late CompareLastMonth? compared;

  @observable
  late List<String> years;

  @observable
  late YearlyAnalyze yearlyAnalyze;

  @observable
  late MonthAnalysis monthAnalysis;

  @action
  Future<void> compareLast() async {
    compared = new CompareLastMonth.fromJson(
      {
        "limitConfig": false,
        "limit": 10.0,
        "percent": 100.0,
        "totalPay": 1000.0,
        "totalIncome": 20.0,
        "totalPayCompare": 50.0,
        "totalIncomeCompare": 40.0,
      },
    );
  }

  @action
  Future<void> getBillYears() async {
    years = ["2021", "2020", "2019", "2018", "2017"];
  }

  @action
  Future<void> getYearlyBills(Map<String, dynamic> param) async {
    yearlyAnalyze = new YearlyAnalyze.fromJson({
      "yearlyAmounts": {
        "totalPay": 1000.0,
        "totalIncome": 20.0,
        "totalRemain": 980.0,
      },
      "monthlyAmounts": [
        {
          "billMonth": "2021-01",
          "totalPay": 100.0,
          "totalIncome": 2.0,
          "totalRemain": 98.0,
        },
        {
          "billMonth": "2021-02",
          "totalPay": 200.0,
          "totalIncome": 4.0,
          "totalRemain": 196.0,
        },
        {
          "billMonth": "2021-03",
          "totalPay": 300.0,
          "totalIncome": 6.0,
          "totalRemain": 294.0,
        }
      ]
    });
  }

  @action
  Future<bool> getMonthAnalysis() async {
    monthAnalysis = new MonthAnalysis.fromJson({
      "monthDayAmount": [
        {
          "totalAmount": 100.0,
          "billDay": "2021-01-01",
        },
        {
          "totalAmount": 200.0,
          "billDay": "2021-02-02",
        },
        {
          "totalAmount": 300.0,
          "billDay": "2021-03-03",
        },
      ]
    });
    return true;
  }
}
