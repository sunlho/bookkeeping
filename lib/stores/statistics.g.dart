// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StatisticsStore on _StatisticsStore, Store {
  late final _$comparedAtom =
      Atom(name: '_StatisticsStore.compared', context: context);

  @override
  CompareLastMonth? get compared {
    _$comparedAtom.reportRead();
    return super.compared;
  }

  bool _comparedIsInitialized = false;

  @override
  set compared(CompareLastMonth? value) {
    _$comparedAtom
        .reportWrite(value, _comparedIsInitialized ? super.compared : null, () {
      super.compared = value;
      _comparedIsInitialized = true;
    });
  }

  late final _$yearsAtom =
      Atom(name: '_StatisticsStore.years', context: context);

  @override
  List<String> get years {
    _$yearsAtom.reportRead();
    return super.years;
  }

  bool _yearsIsInitialized = false;

  @override
  set years(List<String> value) {
    _$yearsAtom.reportWrite(value, _yearsIsInitialized ? super.years : null,
        () {
      super.years = value;
      _yearsIsInitialized = true;
    });
  }

  late final _$yearlyAnalyzeAtom =
      Atom(name: '_StatisticsStore.yearlyAnalyze', context: context);

  @override
  YearlyAnalyze get yearlyAnalyze {
    _$yearlyAnalyzeAtom.reportRead();
    return super.yearlyAnalyze;
  }

  bool _yearlyAnalyzeIsInitialized = false;

  @override
  set yearlyAnalyze(YearlyAnalyze value) {
    _$yearlyAnalyzeAtom.reportWrite(
        value, _yearlyAnalyzeIsInitialized ? super.yearlyAnalyze : null, () {
      super.yearlyAnalyze = value;
      _yearlyAnalyzeIsInitialized = true;
    });
  }

  late final _$monthAnalysisAtom =
      Atom(name: '_StatisticsStore.monthAnalysis', context: context);

  @override
  MonthAnalysis get monthAnalysis {
    _$monthAnalysisAtom.reportRead();
    return super.monthAnalysis;
  }

  bool _monthAnalysisIsInitialized = false;

  @override
  set monthAnalysis(MonthAnalysis value) {
    _$monthAnalysisAtom.reportWrite(
        value, _monthAnalysisIsInitialized ? super.monthAnalysis : null, () {
      super.monthAnalysis = value;
      _monthAnalysisIsInitialized = true;
    });
  }

  late final _$compareLastAsyncAction =
      AsyncAction('_StatisticsStore.compareLast', context: context);

  @override
  Future<void> compareLast() {
    return _$compareLastAsyncAction.run(() => super.compareLast());
  }

  late final _$getBillYearsAsyncAction =
      AsyncAction('_StatisticsStore.getBillYears', context: context);

  @override
  Future<void> getBillYears() {
    return _$getBillYearsAsyncAction.run(() => super.getBillYears());
  }

  late final _$getYearlyBillsAsyncAction =
      AsyncAction('_StatisticsStore.getYearlyBills', context: context);

  @override
  Future<void> getYearlyBills(Map<String, dynamic> param) {
    return _$getYearlyBillsAsyncAction.run(() => super.getYearlyBills(param));
  }

  late final _$getMonthAnalysisAsyncAction =
      AsyncAction('_StatisticsStore.getMonthAnalysis', context: context);

  @override
  Future<bool> getMonthAnalysis() {
    return _$getMonthAnalysisAsyncAction.run(() => super.getMonthAnalysis());
  }

  @override
  String toString() {
    return '''
compared: ${compared},
years: ${years},
yearlyAnalyze: ${yearlyAnalyze},
monthAnalysis: ${monthAnalysis}
    ''';
  }
}
