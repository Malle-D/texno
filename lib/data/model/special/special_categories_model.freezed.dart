// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialModel _$SpecialModelFromJson(Map<String, dynamic> json) {
  return _SpecialModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SpecialItems? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialModelCopyWith<SpecialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialModelCopyWith<$Res> {
  factory $SpecialModelCopyWith(
          SpecialModel value, $Res Function(SpecialModel) then) =
      _$SpecialModelCopyWithImpl<$Res, SpecialModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, SpecialItems? data});

  $SpecialItemsCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpecialModelCopyWithImpl<$Res, $Val extends SpecialModel>
    implements $SpecialModelCopyWith<$Res> {
  _$SpecialModelCopyWithImpl(this._value, this._then);

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
              as SpecialItems?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialItemsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpecialItemsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialModelImplCopyWith<$Res>
    implements $SpecialModelCopyWith<$Res> {
  factory _$$SpecialModelImplCopyWith(
          _$SpecialModelImpl value, $Res Function(_$SpecialModelImpl) then) =
      __$$SpecialModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SpecialItems? data});

  @override
  $SpecialItemsCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpecialModelImplCopyWithImpl<$Res>
    extends _$SpecialModelCopyWithImpl<$Res, _$SpecialModelImpl>
    implements _$$SpecialModelImplCopyWith<$Res> {
  __$$SpecialModelImplCopyWithImpl(
      _$SpecialModelImpl _value, $Res Function(_$SpecialModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpecialModelImpl(
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
              as SpecialItems?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialModelImpl implements _SpecialModel {
  const _$SpecialModelImpl(this.success, this.message, this.code, this.data);

  factory _$SpecialModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SpecialItems? data;

  @override
  String toString() {
    return 'SpecialModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialModelImpl &&
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
  _$$SpecialModelImplCopyWith<_$SpecialModelImpl> get copyWith =>
      __$$SpecialModelImplCopyWithImpl<_$SpecialModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialModelImplToJson(
      this,
    );
  }
}

abstract class _SpecialModel implements SpecialModel {
  const factory _SpecialModel(final bool? success, final String? message,
      final int? code, final SpecialItems? data) = _$SpecialModelImpl;

  factory _SpecialModel.fromJson(Map<String, dynamic> json) =
      _$SpecialModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SpecialItems? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialModelImplCopyWith<_$SpecialModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialItems _$SpecialItemsFromJson(Map<String, dynamic> json) {
  return _SpecialItems.fromJson(json);
}

/// @nodoc
mixin _$SpecialItems {
  List<SpecialItem?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialItemsCopyWith<SpecialItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialItemsCopyWith<$Res> {
  factory $SpecialItemsCopyWith(
          SpecialItems value, $Res Function(SpecialItems) then) =
      _$SpecialItemsCopyWithImpl<$Res, SpecialItems>;
  @useResult
  $Res call({List<SpecialItem?>? data});
}

/// @nodoc
class _$SpecialItemsCopyWithImpl<$Res, $Val extends SpecialItems>
    implements $SpecialItemsCopyWith<$Res> {
  _$SpecialItemsCopyWithImpl(this._value, this._then);

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
              as List<SpecialItem?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialItemsImplCopyWith<$Res>
    implements $SpecialItemsCopyWith<$Res> {
  factory _$$SpecialItemsImplCopyWith(
          _$SpecialItemsImpl value, $Res Function(_$SpecialItemsImpl) then) =
      __$$SpecialItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpecialItem?>? data});
}

/// @nodoc
class __$$SpecialItemsImplCopyWithImpl<$Res>
    extends _$SpecialItemsCopyWithImpl<$Res, _$SpecialItemsImpl>
    implements _$$SpecialItemsImplCopyWith<$Res> {
  __$$SpecialItemsImplCopyWithImpl(
      _$SpecialItemsImpl _value, $Res Function(_$SpecialItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SpecialItemsImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialItem?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialItemsImpl implements _SpecialItems {
  const _$SpecialItemsImpl(final List<SpecialItem?>? data) : _data = data;

  factory _$SpecialItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialItemsImplFromJson(json);

  final List<SpecialItem?>? _data;
  @override
  List<SpecialItem?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialItems(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialItemsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialItemsImplCopyWith<_$SpecialItemsImpl> get copyWith =>
      __$$SpecialItemsImplCopyWithImpl<_$SpecialItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialItemsImplToJson(
      this,
    );
  }
}

abstract class _SpecialItems implements SpecialItems {
  const factory _SpecialItems(final List<SpecialItem?>? data) =
      _$SpecialItemsImpl;

  factory _SpecialItems.fromJson(Map<String, dynamic> json) =
      _$SpecialItemsImpl.fromJson;

  @override
  List<SpecialItem?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialItemsImplCopyWith<_$SpecialItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialItem _$SpecialItemFromJson(Map<String, dynamic> json) {
  return _SpecialItem.fromJson(json);
}

/// @nodoc
mixin _$SpecialItem {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialItemCopyWith<SpecialItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialItemCopyWith<$Res> {
  factory $SpecialItemCopyWith(
          SpecialItem value, $Res Function(SpecialItem) then) =
      _$SpecialItemCopyWithImpl<$Res, SpecialItem>;
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class _$SpecialItemCopyWithImpl<$Res, $Val extends SpecialItem>
    implements $SpecialItemCopyWith<$Res> {
  _$SpecialItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialItemImplCopyWith<$Res>
    implements $SpecialItemCopyWith<$Res> {
  factory _$$SpecialItemImplCopyWith(
          _$SpecialItemImpl value, $Res Function(_$SpecialItemImpl) then) =
      __$$SpecialItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class __$$SpecialItemImplCopyWithImpl<$Res>
    extends _$SpecialItemCopyWithImpl<$Res, _$SpecialItemImpl>
    implements _$$SpecialItemImplCopyWith<$Res> {
  __$$SpecialItemImplCopyWithImpl(
      _$SpecialItemImpl _value, $Res Function(_$SpecialItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$SpecialItemImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialItemImpl implements _SpecialItem {
  const _$SpecialItemImpl(this.title, this.image, this.slug);

  factory _$SpecialItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'SpecialItem(title: $title, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialItemImplCopyWith<_$SpecialItemImpl> get copyWith =>
      __$$SpecialItemImplCopyWithImpl<_$SpecialItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialItemImplToJson(
      this,
    );
  }
}

abstract class _SpecialItem implements SpecialItem {
  const factory _SpecialItem(
          final String? title, final String? image, final String? slug) =
      _$SpecialItemImpl;

  factory _SpecialItem.fromJson(Map<String, dynamic> json) =
      _$SpecialItemImpl.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$SpecialItemImplCopyWith<_$SpecialItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
