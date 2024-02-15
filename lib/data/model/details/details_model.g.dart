// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsItemModelImpl _$$DetailsItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsItemModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : ItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailsItemModelImplToJson(
        _$DetailsItemModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$ItemDataImpl _$$ItemDataImplFromJson(Map<String, dynamic> json) =>
    _$ItemDataImpl(
      json['data'] == null
          ? null
          : ItemDesc.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemDataImplToJson(_$ItemDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ItemDescImpl _$$ItemDescImplFromJson(Map<String, dynamic> json) =>
    _$ItemDescImpl(
      json['id'] as int?,
      json['name'] as String?,
      (json['largeImages'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['salePrice'] as int?,
      json['monthlyPrice'] as String?,
      json['code'] as String?,
      json['description'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemDescImplToJson(_$ItemDescImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'largeImages': instance.largeImages,
      'salePrice': instance.salePrice,
      'monthlyPrice': instance.monthlyPrice,
      'code': instance.code,
      'description': instance.description,
      'characters': instance.characters,
    };

_$CharactersImpl _$$CharactersImplFromJson(Map<String, dynamic> json) =>
    _$CharactersImpl(
      json['name'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => CharactersItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharactersImplToJson(_$CharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters,
    };

_$CharactersItemImpl _$$CharactersItemImplFromJson(Map<String, dynamic> json) =>
    _$CharactersItemImpl(
      json['name'] as String,
      json['value'] as String,
    );

Map<String, dynamic> _$$CharactersItemImplToJson(
        _$CharactersItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
