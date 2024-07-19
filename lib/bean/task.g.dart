// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskItem _$TaskItemFromJson(Map<String, dynamic> json) => TaskItem(
      (json['id'] as num?)?.toInt() ?? 0,
      json['frequency'] as String? ?? 'once',
      json['time'] as String? ?? '00:00',
      json['amount'] as String? ?? '0',
      json['billType'] as String? ?? 'pay',
      json['category'] as String? ?? 'other',
      json['remark'] as String? ?? '',
      json['confirm'] as String? ?? 'no',
      json['payMethod'] as String? ?? 'cash',
    );

Map<String, dynamic> _$TaskItemToJson(TaskItem instance) => <String, dynamic>{
      'id': instance.id,
      'frequency': instance.frequency,
      'time': instance.time,
      'amount': instance.amount,
      'billType': instance.billType,
      'category': instance.category,
      'remark': instance.remark,
      'confirm': instance.confirm,
      'payMethod': instance.payMethod,
    };
