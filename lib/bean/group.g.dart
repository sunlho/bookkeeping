// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupItemUser _$GroupItemUserFromJson(Map<String, dynamic> json) =>
    GroupItemUser(
      (json['id'] as num).toInt(),
      json['nickName'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$GroupItemUserToJson(GroupItemUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickName': instance.nickName,
      'avatar': instance.avatar,
    };

GroupItem _$GroupItemFromJson(Map<String, dynamic> json) => GroupItem(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['desc'] as String,
      json['usage'] as String,
      json['type'] as String,
      (json['creatorId'] as num).toInt(),
      (json['users'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GroupItemUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isDefault'] as String,
      json['isPersonal'] as String,
      json['creator'] == null
          ? null
          : GroupItemUser.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupItemToJson(GroupItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'usage': instance.usage,
      'type': instance.type,
      'creatorId': instance.creatorId,
      'isDefault': instance.isDefault,
      'isPersonal': instance.isPersonal,
      'creator': instance.creator,
      'users': instance.users,
    };
