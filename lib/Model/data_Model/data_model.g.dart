// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelData _$$_ModelDataFromJson(Map<String, dynamic> json) => _$_ModelData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as String?,
      Icon: json['Icon'] as String?,
    );

Map<String, dynamic> _$$_ModelDataToJson(_$_ModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'Icon': instance.Icon,
    };
