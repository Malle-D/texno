// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopsMapModelImpl _$$ShopsMapModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopsMapModelImpl(
      json['success'] as bool?,
      json['message'] as String?,
      json['code'] as int?,
      json['data'] == null
          ? null
          : MapData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopsMapModelImplToJson(_$ShopsMapModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$MapDataImpl _$$MapDataImplFromJson(Map<String, dynamic> json) =>
    _$MapDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => DataLoc.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapDataImplToJson(_$MapDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DataLocImpl _$$DataLocImplFromJson(Map<String, dynamic> json) =>
    _$DataLocImpl(
      json['id'] as int?,
      json['name'] as String?,
      (json['opened_stores'] as List<dynamic>?)
          ?.map((e) => OpenedStores.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['not_opened_stores'] as List<dynamic>?)
          ?.map((e) => NotOpenedStores.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataLocImplToJson(_$DataLocImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'opened_stores': instance.openedStores?.map((e) => e.toJson()).toList(),
      'not_opened_stores':
          instance.notOpenedStores?.map((e) => e.toJson()).toList(),
    };

_$OpenedStoresImpl _$$OpenedStoresImplFromJson(Map<String, dynamic> json) =>
    _$OpenedStoresImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['long'] as String?,
      json['lat'] as String?,
      json['phone'] as String?,
      json['work_time'] as String?,
      json['images'] as List<dynamic>?,
    );

Map<String, dynamic> _$$OpenedStoresImplToJson(_$OpenedStoresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'long': instance.long,
      'lat': instance.lat,
      'phone': instance.phone,
      'work_time': instance.workTime,
      'images': instance.images,
    };

_$NotOpenedStoresImpl _$$NotOpenedStoresImplFromJson(
        Map<String, dynamic> json) =>
    _$NotOpenedStoresImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['long'] as String?,
      json['lat'] as String?,
      json['phone'] as String?,
      json['workTime'] as String?,
      json['images'] as List<dynamic>?,
    );

Map<String, dynamic> _$$NotOpenedStoresImplToJson(
        _$NotOpenedStoresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'long': instance.long,
      'lat': instance.lat,
      'phone': instance.phone,
      'workTime': instance.workTime,
      'images': instance.images,
    };
