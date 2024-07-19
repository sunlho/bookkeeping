// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillRow _$BillRowFromJson(Map<String, dynamic> json) => BillRow(
      (json['id'] as num).toInt(),
      json['category'] as String,
      json['amount'] as String,
      json['billDate'] as String,
      json['billType'] as String,
      json['recordType'] as String,
      json['payMethod'] as String,
      json['remark'] as String,
    );

Map<String, dynamic> _$BillRowToJson(BillRow instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'amount': instance.amount,
      'billDate': instance.billDate,
      'recordType': instance.recordType,
      'payMethod': instance.payMethod,
      'billType': instance.billType,
      'remark': instance.remark,
    };

BillItem _$BillItemFromJson(Map<String, dynamic> json) => BillItem(
      json['billDate'] as String,
      json['totalPay'] as String,
      json['totalIncome'] as String,
      (json['bills'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : BillRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BillItemToJson(BillItem instance) => <String, dynamic>{
      'billDate': instance.billDate,
      'totalPay': instance.totalPay,
      'totalIncome': instance.totalIncome,
      'bills': instance.bills,
    };
