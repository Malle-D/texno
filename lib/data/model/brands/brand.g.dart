// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsModelImpl _$$BrandsModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandsModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : BrandData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsModelImplToJson(_$BrandsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => BrandItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$BrandItemImpl _$$BrandItemImplFromJson(Map<String, dynamic> json) =>
    _$BrandItemImpl(
      json['name'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
      json['image_alt'] as String?,
    );

Map<String, dynamic> _$$BrandItemImplToJson(_$BrandItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'image_alt': instance.imageAlt,
    };
