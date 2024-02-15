// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsMapModel _$ShopsMapModelFromJson(Map<String, dynamic> json) {
  return _ShopsMapModel.fromJson(json);
}

/// @nodoc
mixin _$ShopsMapModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  MapData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsMapModelCopyWith<ShopsMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsMapModelCopyWith<$Res> {
  factory $ShopsMapModelCopyWith(
          ShopsMapModel value, $Res Function(ShopsMapModel) then) =
      _$ShopsMapModelCopyWithImpl<$Res, ShopsMapModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, MapData? data});

  $MapDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ShopsMapModelCopyWithImpl<$Res, $Val extends ShopsMapModel>
    implements $ShopsMapModelCopyWith<$Res> {
  _$ShopsMapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MapDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopsMapModelImplCopyWith<$Res>
    implements $ShopsMapModelCopyWith<$Res> {
  factory _$$ShopsMapModelImplCopyWith(
          _$ShopsMapModelImpl value, $Res Function(_$ShopsMapModelImpl) then) =
      __$$ShopsMapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, MapData? data});

  @override
  $MapDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShopsMapModelImplCopyWithImpl<$Res>
    extends _$ShopsMapModelCopyWithImpl<$Res, _$ShopsMapModelImpl>
    implements _$$ShopsMapModelImplCopyWith<$Res> {
  __$$ShopsMapModelImplCopyWithImpl(
      _$ShopsMapModelImpl _value, $Res Function(_$ShopsMapModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ShopsMapModelImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ShopsMapModelImpl implements _ShopsMapModel {
  const _$ShopsMapModelImpl(this.success, this.message, this.code, this.data);

  factory _$ShopsMapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopsMapModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final MapData? data;

  @override
  String toString() {
    return 'ShopsMapModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopsMapModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopsMapModelImplCopyWith<_$ShopsMapModelImpl> get copyWith =>
      __$$ShopsMapModelImplCopyWithImpl<_$ShopsMapModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopsMapModelImplToJson(
      this,
    );
  }
}

abstract class _ShopsMapModel implements ShopsMapModel {
  const factory _ShopsMapModel(final bool? success, final String? message,
      final int? code, final MapData? data) = _$ShopsMapModelImpl;

  factory _ShopsMapModel.fromJson(Map<String, dynamic> json) =
      _$ShopsMapModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  MapData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShopsMapModelImplCopyWith<_$ShopsMapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapData _$MapDataFromJson(Map<String, dynamic> json) {
  return _MapData.fromJson(json);
}

/// @nodoc
mixin _$MapData {
  List<DataLoc>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapDataCopyWith<MapData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDataCopyWith<$Res> {
  factory $MapDataCopyWith(MapData value, $Res Function(MapData) then) =
      _$MapDataCopyWithImpl<$Res, MapData>;
  @useResult
  $Res call({List<DataLoc>? data});
}

/// @nodoc
class _$MapDataCopyWithImpl<$Res, $Val extends MapData>
    implements $MapDataCopyWith<$Res> {
  _$MapDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataLoc>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapDataImplCopyWith<$Res> implements $MapDataCopyWith<$Res> {
  factory _$$MapDataImplCopyWith(
          _$MapDataImpl value, $Res Function(_$MapDataImpl) then) =
      __$$MapDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataLoc>? data});
}

/// @nodoc
class __$$MapDataImplCopyWithImpl<$Res>
    extends _$MapDataCopyWithImpl<$Res, _$MapDataImpl>
    implements _$$MapDataImplCopyWith<$Res> {
  __$$MapDataImplCopyWithImpl(
      _$MapDataImpl _value, $Res Function(_$MapDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$MapDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataLoc>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MapDataImpl implements _MapData {
  const _$MapDataImpl(final List<DataLoc>? data) : _data = data;

  factory _$MapDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapDataImplFromJson(json);

  final List<DataLoc>? _data;
  @override
  List<DataLoc>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapDataImplCopyWith<_$MapDataImpl> get copyWith =>
      __$$MapDataImplCopyWithImpl<_$MapDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapDataImplToJson(
      this,
    );
  }
}

abstract class _MapData implements MapData {
  const factory _MapData(final List<DataLoc>? data) = _$MapDataImpl;

  factory _MapData.fromJson(Map<String, dynamic> json) = _$MapDataImpl.fromJson;

  @override
  List<DataLoc>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MapDataImplCopyWith<_$MapDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataLoc _$DataLocFromJson(Map<String, dynamic> json) {
  return _DataLoc.fromJson(json);
}

/// @nodoc
mixin _$DataLoc {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<OpenedStores>? get openedStores => throw _privateConstructorUsedError;
  List<NotOpenedStores>? get notOpenedStores =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataLocCopyWith<DataLoc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataLocCopyWith<$Res> {
  factory $DataLocCopyWith(DataLoc value, $Res Function(DataLoc) then) =
      _$DataLocCopyWithImpl<$Res, DataLoc>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStores>? openedStores,
      List<NotOpenedStores>? notOpenedStores});
}

/// @nodoc
class _$DataLocCopyWithImpl<$Res, $Val extends DataLoc>
    implements $DataLocCopyWith<$Res> {
  _$DataLocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openedStores: freezed == openedStores
          ? _value.openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStores>?,
      notOpenedStores: freezed == notOpenedStores
          ? _value.notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<NotOpenedStores>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataLocImplCopyWith<$Res> implements $DataLocCopyWith<$Res> {
  factory _$$DataLocImplCopyWith(
          _$DataLocImpl value, $Res Function(_$DataLocImpl) then) =
      __$$DataLocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStores>? openedStores,
      List<NotOpenedStores>? notOpenedStores});
}

/// @nodoc
class __$$DataLocImplCopyWithImpl<$Res>
    extends _$DataLocCopyWithImpl<$Res, _$DataLocImpl>
    implements _$$DataLocImplCopyWith<$Res> {
  __$$DataLocImplCopyWithImpl(
      _$DataLocImpl _value, $Res Function(_$DataLocImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
  }) {
    return _then(_$DataLocImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == openedStores
          ? _value._openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStores>?,
      freezed == notOpenedStores
          ? _value._notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<NotOpenedStores>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$DataLocImpl implements _DataLoc {
  const _$DataLocImpl(
      this.id,
      this.name,
      final List<OpenedStores>? openedStores,
      final List<NotOpenedStores>? notOpenedStores)
      : _openedStores = openedStores,
        _notOpenedStores = notOpenedStores;

  factory _$DataLocImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataLocImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<OpenedStores>? _openedStores;
  @override
  List<OpenedStores>? get openedStores {
    final value = _openedStores;
    if (value == null) return null;
    if (_openedStores is EqualUnmodifiableListView) return _openedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotOpenedStores>? _notOpenedStores;
  @override
  List<NotOpenedStores>? get notOpenedStores {
    final value = _notOpenedStores;
    if (value == null) return null;
    if (_notOpenedStores is EqualUnmodifiableListView) return _notOpenedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataLoc(id: $id, name: $name, openedStores: $openedStores, notOpenedStores: $notOpenedStores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLocImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._openedStores, _openedStores) &&
            const DeepCollectionEquality()
                .equals(other._notOpenedStores, _notOpenedStores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_openedStores),
      const DeepCollectionEquality().hash(_notOpenedStores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLocImplCopyWith<_$DataLocImpl> get copyWith =>
      __$$DataLocImplCopyWithImpl<_$DataLocImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataLocImplToJson(
      this,
    );
  }
}

abstract class _DataLoc implements DataLoc {
  const factory _DataLoc(
      final int? id,
      final String? name,
      final List<OpenedStores>? openedStores,
      final List<NotOpenedStores>? notOpenedStores) = _$DataLocImpl;

  factory _DataLoc.fromJson(Map<String, dynamic> json) = _$DataLocImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<OpenedStores>? get openedStores;
  @override
  List<NotOpenedStores>? get notOpenedStores;
  @override
  @JsonKey(ignore: true)
  _$$DataLocImplCopyWith<_$DataLocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenedStores _$OpenedStoresFromJson(Map<String, dynamic> json) {
  return _OpenedStores.fromJson(json);
}

/// @nodoc
mixin _$OpenedStores {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get workTime => throw _privateConstructorUsedError;
  List<dynamic>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenedStoresCopyWith<OpenedStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenedStoresCopyWith<$Res> {
  factory $OpenedStoresCopyWith(
          OpenedStores value, $Res Function(OpenedStores) then) =
      _$OpenedStoresCopyWithImpl<$Res, OpenedStores>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic>? images});
}

/// @nodoc
class _$OpenedStoresCopyWithImpl<$Res, $Val extends OpenedStores>
    implements $OpenedStoresCopyWith<$Res> {
  _$OpenedStoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenedStoresImplCopyWith<$Res>
    implements $OpenedStoresCopyWith<$Res> {
  factory _$$OpenedStoresImplCopyWith(
          _$OpenedStoresImpl value, $Res Function(_$OpenedStoresImpl) then) =
      __$$OpenedStoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic>? images});
}

/// @nodoc
class __$$OpenedStoresImplCopyWithImpl<$Res>
    extends _$OpenedStoresCopyWithImpl<$Res, _$OpenedStoresImpl>
    implements _$$OpenedStoresImplCopyWith<$Res> {
  __$$OpenedStoresImplCopyWithImpl(
      _$OpenedStoresImpl _value, $Res Function(_$OpenedStoresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
  }) {
    return _then(_$OpenedStoresImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$OpenedStoresImpl implements _OpenedStores {
  const _$OpenedStoresImpl(
      this.id,
      this.name,
      this.address,
      this.description,
      this.long,
      this.lat,
      this.phone,
      this.workTime,
      final List<dynamic>? images)
      : _images = images;

  factory _$OpenedStoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenedStoresImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? long;
  @override
  final String? lat;
  @override
  final String? phone;
  @override
  final String? workTime;
  final List<dynamic>? _images;
  @override
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpenedStores(id: $id, name: $name, address: $address, description: $description, long: $long, lat: $lat, phone: $phone, workTime: $workTime, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenedStoresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, description,
      long, lat, phone, workTime, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenedStoresImplCopyWith<_$OpenedStoresImpl> get copyWith =>
      __$$OpenedStoresImplCopyWithImpl<_$OpenedStoresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenedStoresImplToJson(
      this,
    );
  }
}

abstract class _OpenedStores implements OpenedStores {
  const factory _OpenedStores(
      final int? id,
      final String? name,
      final String? address,
      final String? description,
      final String? long,
      final String? lat,
      final String? phone,
      final String? workTime,
      final List<dynamic>? images) = _$OpenedStoresImpl;

  factory _OpenedStores.fromJson(Map<String, dynamic> json) =
      _$OpenedStoresImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get long;
  @override
  String? get lat;
  @override
  String? get phone;
  @override
  String? get workTime;
  @override
  List<dynamic>? get images;
  @override
  @JsonKey(ignore: true)
  _$$OpenedStoresImplCopyWith<_$OpenedStoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotOpenedStores _$NotOpenedStoresFromJson(Map<String, dynamic> json) {
  return _NotOpenedStores.fromJson(json);
}

/// @nodoc
mixin _$NotOpenedStores {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get workTime => throw _privateConstructorUsedError;
  List<dynamic>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotOpenedStoresCopyWith<NotOpenedStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotOpenedStoresCopyWith<$Res> {
  factory $NotOpenedStoresCopyWith(
          NotOpenedStores value, $Res Function(NotOpenedStores) then) =
      _$NotOpenedStoresCopyWithImpl<$Res, NotOpenedStores>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic>? images});
}

/// @nodoc
class _$NotOpenedStoresCopyWithImpl<$Res, $Val extends NotOpenedStores>
    implements $NotOpenedStoresCopyWith<$Res> {
  _$NotOpenedStoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotOpenedStoresImplCopyWith<$Res>
    implements $NotOpenedStoresCopyWith<$Res> {
  factory _$$NotOpenedStoresImplCopyWith(_$NotOpenedStoresImpl value,
          $Res Function(_$NotOpenedStoresImpl) then) =
      __$$NotOpenedStoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<dynamic>? images});
}

/// @nodoc
class __$$NotOpenedStoresImplCopyWithImpl<$Res>
    extends _$NotOpenedStoresCopyWithImpl<$Res, _$NotOpenedStoresImpl>
    implements _$$NotOpenedStoresImplCopyWith<$Res> {
  __$$NotOpenedStoresImplCopyWithImpl(
      _$NotOpenedStoresImpl _value, $Res Function(_$NotOpenedStoresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
  }) {
    return _then(_$NotOpenedStoresImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotOpenedStoresImpl implements _NotOpenedStores {
  const _$NotOpenedStoresImpl(
      this.id,
      this.name,
      this.address,
      this.description,
      this.long,
      this.lat,
      this.phone,
      this.workTime,
      final List<dynamic>? images)
      : _images = images;

  factory _$NotOpenedStoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotOpenedStoresImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? long;
  @override
  final String? lat;
  @override
  final String? phone;
  @override
  final String? workTime;
  final List<dynamic>? _images;
  @override
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotOpenedStores(id: $id, name: $name, address: $address, description: $description, long: $long, lat: $lat, phone: $phone, workTime: $workTime, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotOpenedStoresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, description,
      long, lat, phone, workTime, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotOpenedStoresImplCopyWith<_$NotOpenedStoresImpl> get copyWith =>
      __$$NotOpenedStoresImplCopyWithImpl<_$NotOpenedStoresImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotOpenedStoresImplToJson(
      this,
    );
  }
}

abstract class _NotOpenedStores implements NotOpenedStores {
  const factory _NotOpenedStores(
      final int? id,
      final String? name,
      final String? address,
      final String? description,
      final String? long,
      final String? lat,
      final String? phone,
      final String? workTime,
      final List<dynamic>? images) = _$NotOpenedStoresImpl;

  factory _NotOpenedStores.fromJson(Map<String, dynamic> json) =
      _$NotOpenedStoresImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get long;
  @override
  String? get lat;
  @override
  String? get phone;
  @override
  String? get workTime;
  @override
  List<dynamic>? get images;
  @override
  @JsonKey(ignore: true)
  _$$NotOpenedStoresImplCopyWith<_$NotOpenedStoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
