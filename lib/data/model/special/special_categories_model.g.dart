// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialModelImpl _$$SpecialModelImplFromJson(Map<String, dynamic> json) =>
    _$SpecialModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : SpecialItems.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialModelImplToJson(_$SpecialModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$SpecialItemsImpl _$$SpecialItemsImplFromJson(Map<String, dynamic> json) =>
    _$SpecialItemsImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecialItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialItemsImplToJson(_$SpecialItemsImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e?.toJson()).toList(),
    };

_$SpecialItemImpl _$$SpecialItemImplFromJson(Map<String, dynamic> json) =>
    _$SpecialItemImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$SpecialItemImplToJson(_$SpecialItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
