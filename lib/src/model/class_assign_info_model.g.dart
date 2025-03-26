// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_assign_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassAssignInfoModelImpl _$$ClassAssignInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassAssignInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      assigned: json['assigned'] as bool?,
    );

Map<String, dynamic> _$$ClassAssignInfoModelImplToJson(
        _$ClassAssignInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalStudent': instance.totalStudent,
      'assigned': instance.assigned,
    };
