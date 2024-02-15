// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsModel _$BrandsModelFromJson(Map<String, dynamic> json) {
  return _BrandsModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  BrandData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsModelCopyWith<BrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsModelCopyWith<$Res> {
  factory $BrandsModelCopyWith(
          BrandsModel value, $Res Function(BrandsModel) then) =
      _$BrandsModelCopyWithImpl<$Res, BrandsModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, BrandData? data});

  $BrandDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandsModelCopyWithImpl<$Res, $Val extends BrandsModel>
    implements $BrandsModelCopyWith<$Res> {
  _$BrandsModelCopyWithImpl(this._value, this._then);

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
              as BrandData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandsModelImplCopyWith<$Res>
    implements $BrandsModelCopyWith<$Res> {
  factory _$$BrandsModelImplCopyWith(
          _$BrandsModelImpl value, $Res Function(_$BrandsModelImpl) then) =
      __$$BrandsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, BrandData? data});

  @override
  $BrandDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandsModelImplCopyWithImpl<$Res>
    extends _$BrandsModelCopyWithImpl<$Res, _$BrandsModelImpl>
    implements _$$BrandsModelImplCopyWith<$Res> {
  __$$BrandsModelImplCopyWithImpl(
      _$BrandsModelImpl _value, $Res Function(_$BrandsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BrandsModelImpl(
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
              as BrandData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BrandsModelImpl implements _BrandsModel {
  const _$BrandsModelImpl(this.success, this.message, this.code, this.data);

  factory _$BrandsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final BrandData? data;

  @override
  String toString() {
    return 'BrandsModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsModelImpl &&
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
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      __$$BrandsModelImplCopyWithImpl<_$BrandsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsModel implements BrandsModel {
  const factory _BrandsModel(final bool? success, final String? message,
      final int? code, final BrandData? data) = _$BrandsModelImpl;

  factory _BrandsModel.fromJson(Map<String, dynamic> json) =
      _$BrandsModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  BrandData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandData _$BrandDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$BrandData {
  List<BrandItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDataCopyWith<BrandData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDataCopyWith<$Res> {
  factory $BrandDataCopyWith(BrandData value, $Res Function(BrandData) then) =
      _$BrandDataCopyWithImpl<$Res, BrandData>;
  @useResult
  $Res call({List<BrandItem>? data});
}

/// @nodoc
class _$BrandDataCopyWithImpl<$Res, $Val extends BrandData>
    implements $BrandDataCopyWith<$Res> {
  _$BrandDataCopyWithImpl(this._value, this._then);

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
              as List<BrandItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $BrandDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandItem>? data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$BrandDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$DataImpl implements _Data {
  const _$DataImpl(final List<BrandItem>? data) : _data = data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<BrandItem>? _data;
  @override
  List<BrandItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements BrandData {
  const factory _Data(final List<BrandItem>? data) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<BrandItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandItem _$BrandItemFromJson(Map<String, dynamic> json) {
  return _BrandItem.fromJson(json);
}

/// @nodoc
mixin _$BrandItem {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageAlt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res, BrandItem>;
  @useResult
  $Res call({String? name, String? slug, String? image, String? imageAlt});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res, $Val extends BrandItem>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandItemImplCopyWith<$Res>
    implements $BrandItemCopyWith<$Res> {
  factory _$$BrandItemImplCopyWith(
          _$BrandItemImpl value, $Res Function(_$BrandItemImpl) then) =
      __$$BrandItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? slug, String? image, String? imageAlt});
}

/// @nodoc
class __$$BrandItemImplCopyWithImpl<$Res>
    extends _$BrandItemCopyWithImpl<$Res, _$BrandItemImpl>
    implements _$$BrandItemImplCopyWith<$Res> {
  __$$BrandItemImplCopyWithImpl(
      _$BrandItemImpl _value, $Res Function(_$BrandItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
  }) {
    return _then(_$BrandItemImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BrandItemImpl implements _BrandItem {
  const _$BrandItemImpl(this.name, this.slug, this.image, this.imageAlt);

  factory _$BrandItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? image;
  @override
  final String? imageAlt;

  @override
  String toString() {
    return 'BrandItem(name: $name, slug: $slug, image: $image, imageAlt: $imageAlt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, image, imageAlt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandItemImplCopyWith<_$BrandItemImpl> get copyWith =>
      __$$BrandItemImplCopyWithImpl<_$BrandItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemImplToJson(
      this,
    );
  }
}

abstract class _BrandItem implements BrandItem {
  const factory _BrandItem(final String? name, final String? slug,
      final String? image, final String? imageAlt) = _$BrandItemImpl;

  factory _BrandItem.fromJson(Map<String, dynamic> json) =
      _$BrandItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get image;
  @override
  String? get imageAlt;
  @override
  @JsonKey(ignore: true)
  _$$BrandItemImplCopyWith<_$BrandItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
