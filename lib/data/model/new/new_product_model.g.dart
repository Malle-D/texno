// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewProductModelImpl _$$NewProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewProductModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : NewProductItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewProductModelImplToJson(
        _$NewProductModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$NewProductItemImpl _$$NewProductItemImplFromJson(Map<String, dynamic> json) =>
    _$NewProductItemImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => NewProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewProductItemImplToJson(
        _$NewProductItemImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$NewProductDataImpl _$$NewProductDataImplFromJson(Map<String, dynamic> json) =>
    _$NewProductDataImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['image'] as String?,
      json['availability'] as String?,
      json['axiom_monthly_price'] as String?,
      json['sale_price'] as int?,
      json['reviews_count'] as int?,
      json['all_count'] as int?,
    );

Map<String, dynamic> _$$NewProductDataImplToJson(
        _$NewProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'reviews_count': instance.reviewsCount,
      'all_count': instance.allCount,
    };
