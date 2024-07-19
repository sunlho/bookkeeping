import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class TaskItem {
  final int id;
  final String frequency;
  final String time;
  final String amount;
  final String billType;
  final String category;
  final String remark;
  final String confirm;
  final String payMethod;

  TaskItem([
    this.id = 0,
    this.frequency = 'once',
    this.time = '00:00',
    this.amount = '0',
    this.billType = 'pay',
    this.category = 'other',
    this.remark = '',
    this.confirm = 'no',
    this.payMethod = 'cash',
  ]);

  factory TaskItem.fromJson(Map<String, dynamic> json) => _$TaskItemFromJson(json);

  Map<String, dynamic> toJson() => _$TaskItemToJson(this);
}
