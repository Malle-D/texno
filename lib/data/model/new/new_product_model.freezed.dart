// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewProductModel _$NewProductModelFromJson(Map<String, dynamic> json) {
  return _NewProductModel.fromJson(json);
}

/// @nodoc
mixin _$NewProductModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  NewProductItem? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductModelCopyWith<NewProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductModelCopyWith<$Res> {
  factory $NewProductModelCopyWith(
          NewProductModel value, $Res Function(NewProductModel) then) =
      _$NewProductModelCopyWithImpl<$Res, NewProductModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, NewProductItem? data});

  $NewProductItemCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewProductModelCopyWithImpl<$Res, $Val extends NewProductModel>
    implements $NewProductModelCopyWith<$Res> {
  _$NewProductModelCopyWithImpl(this._value, this._then);

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
              as NewProductItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewProductItemCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NewProductItemCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewProductModelImplCopyWith<$Res>
    implements $NewProductModelCopyWith<$Res> {
  factory _$$NewProductModelImplCopyWith(_$NewProductModelImpl value,
          $Res Function(_$NewProductModelImpl) then) =
      __$$NewProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, NewProductItem? data});

  @override
  $NewProductItemCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NewProductModelImplCopyWithImpl<$Res>
    extends _$NewProductModelCopyWithImpl<$Res, _$NewProductModelImpl>
    implements _$$NewProductModelImplCopyWith<$Res> {
  __$$NewProductModelImplCopyWithImpl(
      _$NewProductModelImpl _value, $Res Function(_$NewProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewProductModelImpl(
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
              as NewProductItem?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProductModelImpl implements _NewProductModel {
  const _$NewProductModelImpl(this.success, this.message, this.code, this.data);

  factory _$NewProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewProductModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final NewProductItem? data;

  @override
  String toString() {
    return 'NewProductModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProductModelImpl &&
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
  _$$NewProductModelImplCopyWith<_$NewProductModelImpl> get copyWith =>
      __$$NewProductModelImplCopyWithImpl<_$NewProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProductModelImplToJson(
      this,
    );
  }
}

abstract class _NewProductModel implements NewProductModel {
  const factory _NewProductModel(final bool? success, final String? message,
      final int? code, final NewProductItem? data) = _$NewProductModelImpl;

  factory _NewProductModel.fromJson(Map<String, dynamic> json) =
      _$NewProductModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  NewProductItem? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewProductModelImplCopyWith<_$NewProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProductItem _$NewProductItemFromJson(Map<String, dynamic> json) {
  return _NewProductItem.fromJson(json);
}

/// @nodoc
mixin _$NewProductItem {
  List<NewProductData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductItemCopyWith<NewProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductItemCopyWith<$Res> {
  factory $NewProductItemCopyWith(
          NewProductItem value, $Res Function(NewProductItem) then) =
      _$NewProductItemCopyWithImpl<$Res, NewProductItem>;
  @useResult
  $Res call({List<NewProductData>? data});
}

/// @nodoc
class _$NewProductItemCopyWithImpl<$Res, $Val extends NewProductItem>
    implements $NewProductItemCopyWith<$Res> {
  _$NewProductItemCopyWithImpl(this._value, this._then);

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
              as List<NewProductData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewProductItemImplCopyWith<$Res>
    implements $NewProductItemCopyWith<$Res> {
  factory _$$NewProductItemImplCopyWith(_$NewProductItemImpl value,
          $Res Function(_$NewProductItemImpl) then) =
      __$$NewProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewProductData>? data});
}

/// @nodoc
class __$$NewProductItemImplCopyWithImpl<$Res>
    extends _$NewProductItemCopyWithImpl<$Res, _$NewProductItemImpl>
    implements _$$NewProductItemImplCopyWith<$Res> {
  __$$NewProductItemImplCopyWithImpl(
      _$NewProductItemImpl _value, $Res Function(_$NewProductItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NewProductItemImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewProductData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProductItemImpl implements _NewProductItem {
  const _$NewProductItemImpl(final List<NewProductData>? data) : _data = data;

  factory _$NewProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewProductItemImplFromJson(json);

  final List<NewProductData>? _data;
  @override
  List<NewProductData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewProductItem(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProductItemImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewProductItemImplCopyWith<_$NewProductItemImpl> get copyWith =>
      __$$NewProductItemImplCopyWithImpl<_$NewProductItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProductItemImplToJson(
      this,
    );
  }
}

abstract class _NewProductItem implements NewProductItem {
  const factory _NewProductItem(final List<NewProductData>? data) =
      _$NewProductItemImpl;

  factory _NewProductItem.fromJson(Map<String, dynamic> json) =
      _$NewProductItemImpl.fromJson;

  @override
  List<NewProductData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewProductItemImplCopyWith<_$NewProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProductData _$NewProductDataFromJson(Map<String, dynamic> json) {
  return _NewProductData.fromJson(json);
}

/// @nodoc
mixin _$NewProductData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError; // Null? oldPrice,
  int? get reviewsCount =>
      throw _privateConstructorUsedError; // Null? reviewsAverage,
  int? get allCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductDataCopyWith<NewProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductDataCopyWith<$Res> {
  factory $NewProductDataCopyWith(
          NewProductData value, $Res Function(NewProductData) then) =
      _$NewProductDataCopyWithImpl<$Res, NewProductData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      int? salePrice,
      int? reviewsCount,
      int? allCount});
}

/// @nodoc
class _$NewProductDataCopyWithImpl<$Res, $Val extends NewProductData>
    implements $NewProductDataCopyWith<$Res> {
  _$NewProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? reviewsCount = freezed,
    Object? allCount = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewProductDataImplCopyWith<$Res>
    implements $NewProductDataCopyWith<$Res> {
  factory _$$NewProductDataImplCopyWith(_$NewProductDataImpl value,
          $Res Function(_$NewProductDataImpl) then) =
      __$$NewProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      int? salePrice,
      int? reviewsCount,
      int? allCount});
}

/// @nodoc
class __$$NewProductDataImplCopyWithImpl<$Res>
    extends _$NewProductDataCopyWithImpl<$Res, _$NewProductDataImpl>
    implements _$$NewProductDataImplCopyWith<$Res> {
  __$$NewProductDataImplCopyWithImpl(
      _$NewProductDataImpl _value, $Res Function(_$NewProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? reviewsCount = freezed,
    Object? allCount = freezed,
  }) {
    return _then(_$NewProductDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProductDataImpl implements _NewProductData {
  const _$NewProductDataImpl(this.id, this.name, this.image, this.availability,
      this.axiomMonthlyPrice, this.salePrice, this.reviewsCount, this.allCount);

  factory _$NewProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewProductDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? availability;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? salePrice;
// Null? oldPrice,
  @override
  final int? reviewsCount;
// Null? reviewsAverage,
  @override
  final int? allCount;

  @override
  String toString() {
    return 'NewProductData(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, reviewsCount: $reviewsCount, allCount: $allCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, availability,
      axiomMonthlyPrice, salePrice, reviewsCount, allCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewProductDataImplCopyWith<_$NewProductDataImpl> get copyWith =>
      __$$NewProductDataImplCopyWithImpl<_$NewProductDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProductDataImplToJson(
      this,
    );
  }
}

abstract class _NewProductData implements NewProductData {
  const factory _NewProductData(
      final int? id,
      final String? name,
      final String? image,
      final String? availability,
      final String? axiomMonthlyPrice,
      final int? salePrice,
      final int? reviewsCount,
      final int? allCount) = _$NewProductDataImpl;

  factory _NewProductData.fromJson(Map<String, dynamic> json) =
      _$NewProductDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get availability;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get salePrice;
  @override // Null? oldPrice,
  int? get reviewsCount;
  @override // Null? reviewsAverage,
  int? get allCount;
  @override
  @JsonKey(ignore: true)
  _$$NewProductDataImplCopyWith<_$NewProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
