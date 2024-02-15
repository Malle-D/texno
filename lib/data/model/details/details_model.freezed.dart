// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailsItemModel _$DetailsItemModelFromJson(Map<String, dynamic> json) {
  return _DetailsItemModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsItemModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  ItemData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsItemModelCopyWith<DetailsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsItemModelCopyWith<$Res> {
  factory $DetailsItemModelCopyWith(
          DetailsItemModel value, $Res Function(DetailsItemModel) then) =
      _$DetailsItemModelCopyWithImpl<$Res, DetailsItemModel>;
  @useResult
  $Res call({bool? success, String? message, int? code, ItemData? data});

  $ItemDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailsItemModelCopyWithImpl<$Res, $Val extends DetailsItemModel>
    implements $DetailsItemModelCopyWith<$Res> {
  _$DetailsItemModelCopyWithImpl(this._value, this._then);

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
              as ItemData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ItemDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsItemModelImplCopyWith<$Res>
    implements $DetailsItemModelCopyWith<$Res> {
  factory _$$DetailsItemModelImplCopyWith(_$DetailsItemModelImpl value,
          $Res Function(_$DetailsItemModelImpl) then) =
      __$$DetailsItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, ItemData? data});

  @override
  $ItemDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DetailsItemModelImplCopyWithImpl<$Res>
    extends _$DetailsItemModelCopyWithImpl<$Res, _$DetailsItemModelImpl>
    implements _$$DetailsItemModelImplCopyWith<$Res> {
  __$$DetailsItemModelImplCopyWithImpl(_$DetailsItemModelImpl _value,
      $Res Function(_$DetailsItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailsItemModelImpl(
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
              as ItemData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsItemModelImpl implements _DetailsItemModel {
  const _$DetailsItemModelImpl(
      this.success, this.message, this.code, this.data);

  factory _$DetailsItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsItemModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final ItemData? data;

  @override
  String toString() {
    return 'DetailsItemModel(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsItemModelImpl &&
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
  _$$DetailsItemModelImplCopyWith<_$DetailsItemModelImpl> get copyWith =>
      __$$DetailsItemModelImplCopyWithImpl<_$DetailsItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsItemModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsItemModel implements DetailsItemModel {
  const factory _DetailsItemModel(final bool? success, final String? message,
      final int? code, final ItemData? data) = _$DetailsItemModelImpl;

  factory _DetailsItemModel.fromJson(Map<String, dynamic> json) =
      _$DetailsItemModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  ItemData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailsItemModelImplCopyWith<_$DetailsItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return _ItemData.fromJson(json);
}

/// @nodoc
mixin _$ItemData {
  ItemDesc? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDataCopyWith<ItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDataCopyWith<$Res> {
  factory $ItemDataCopyWith(ItemData value, $Res Function(ItemData) then) =
      _$ItemDataCopyWithImpl<$Res, ItemData>;
  @useResult
  $Res call({ItemDesc? data});

  $ItemDescCopyWith<$Res>? get data;
}

/// @nodoc
class _$ItemDataCopyWithImpl<$Res, $Val extends ItemData>
    implements $ItemDataCopyWith<$Res> {
  _$ItemDataCopyWithImpl(this._value, this._then);

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
              as ItemDesc?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDescCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ItemDescCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemDataImplCopyWith<$Res>
    implements $ItemDataCopyWith<$Res> {
  factory _$$ItemDataImplCopyWith(
          _$ItemDataImpl value, $Res Function(_$ItemDataImpl) then) =
      __$$ItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemDesc? data});

  @override
  $ItemDescCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ItemDataImplCopyWithImpl<$Res>
    extends _$ItemDataCopyWithImpl<$Res, _$ItemDataImpl>
    implements _$$ItemDataImplCopyWith<$Res> {
  __$$ItemDataImplCopyWithImpl(
      _$ItemDataImpl _value, $Res Function(_$ItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ItemDataImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ItemDesc?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDataImpl implements _ItemData {
  const _$ItemDataImpl(this.data);

  factory _$ItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDataImplFromJson(json);

  @override
  final ItemDesc? data;

  @override
  String toString() {
    return 'ItemData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDataImplCopyWith<_$ItemDataImpl> get copyWith =>
      __$$ItemDataImplCopyWithImpl<_$ItemDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDataImplToJson(
      this,
    );
  }
}

abstract class _ItemData implements ItemData {
  const factory _ItemData(final ItemDesc? data) = _$ItemDataImpl;

  factory _ItemData.fromJson(Map<String, dynamic> json) =
      _$ItemDataImpl.fromJson;

  @override
  ItemDesc? get data;
  @override
  @JsonKey(ignore: true)
  _$$ItemDataImplCopyWith<_$ItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDesc _$ItemDescFromJson(Map<String, dynamic> json) {
  return _ItemDesc.fromJson(json);
}

/// @nodoc
mixin _$ItemDesc {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get largeImages => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  String? get monthlyPrice => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Characters>? get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDescCopyWith<ItemDesc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDescCopyWith<$Res> {
  factory $ItemDescCopyWith(ItemDesc value, $Res Function(ItemDesc) then) =
      _$ItemDescCopyWithImpl<$Res, ItemDesc>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? largeImages,
      int? salePrice,
      String? monthlyPrice,
      String? code,
      String? description,
      List<Characters>? characters});
}

/// @nodoc
class _$ItemDescCopyWithImpl<$Res, $Val extends ItemDesc>
    implements $ItemDescCopyWith<$Res> {
  _$ItemDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? largeImages = freezed,
    Object? salePrice = freezed,
    Object? monthlyPrice = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? characters = freezed,
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
      largeImages: freezed == largeImages
          ? _value.largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyPrice: freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDescImplCopyWith<$Res>
    implements $ItemDescCopyWith<$Res> {
  factory _$$ItemDescImplCopyWith(
          _$ItemDescImpl value, $Res Function(_$ItemDescImpl) then) =
      __$$ItemDescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? largeImages,
      int? salePrice,
      String? monthlyPrice,
      String? code,
      String? description,
      List<Characters>? characters});
}

/// @nodoc
class __$$ItemDescImplCopyWithImpl<$Res>
    extends _$ItemDescCopyWithImpl<$Res, _$ItemDescImpl>
    implements _$$ItemDescImplCopyWith<$Res> {
  __$$ItemDescImplCopyWithImpl(
      _$ItemDescImpl _value, $Res Function(_$ItemDescImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? largeImages = freezed,
    Object? salePrice = freezed,
    Object? monthlyPrice = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? characters = freezed,
  }) {
    return _then(_$ItemDescImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == largeImages
          ? _value._largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDescImpl implements _ItemDesc {
  const _$ItemDescImpl(
      this.id,
      this.name,
      final List<String>? largeImages,
      this.salePrice,
      this.monthlyPrice,
      this.code,
      this.description,
      final List<Characters>? characters)
      : _largeImages = largeImages,
        _characters = characters;

  factory _$ItemDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDescImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<String>? _largeImages;
  @override
  List<String>? get largeImages {
    final value = _largeImages;
    if (value == null) return null;
    if (_largeImages is EqualUnmodifiableListView) return _largeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? salePrice;
  @override
  final String? monthlyPrice;
  @override
  final String? code;
  @override
  final String? description;
  final List<Characters>? _characters;
  @override
  List<Characters>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemDesc(id: $id, name: $name, largeImages: $largeImages, salePrice: $salePrice, monthlyPrice: $monthlyPrice, code: $code, description: $description, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDescImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._largeImages, _largeImages) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_largeImages),
      salePrice,
      monthlyPrice,
      code,
      description,
      const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDescImplCopyWith<_$ItemDescImpl> get copyWith =>
      __$$ItemDescImplCopyWithImpl<_$ItemDescImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDescImplToJson(
      this,
    );
  }
}

abstract class _ItemDesc implements ItemDesc {
  const factory _ItemDesc(
      final int? id,
      final String? name,
      final List<String>? largeImages,
      final int? salePrice,
      final String? monthlyPrice,
      final String? code,
      final String? description,
      final List<Characters>? characters) = _$ItemDescImpl;

  factory _ItemDesc.fromJson(Map<String, dynamic> json) =
      _$ItemDescImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<String>? get largeImages;
  @override
  int? get salePrice;
  @override
  String? get monthlyPrice;
  @override
  String? get code;
  @override
  String? get description;
  @override
  List<Characters>? get characters;
  @override
  @JsonKey(ignore: true)
  _$$ItemDescImplCopyWith<_$ItemDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
mixin _$Characters {
  String? get name => throw _privateConstructorUsedError;
  List<CharactersItem>? get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res, Characters>;
  @useResult
  $Res call({String? name, List<CharactersItem>? characters});
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res, $Val extends Characters>
    implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharactersItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersImplCopyWith<$Res>
    implements $CharactersCopyWith<$Res> {
  factory _$$CharactersImplCopyWith(
          _$CharactersImpl value, $Res Function(_$CharactersImpl) then) =
      __$$CharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<CharactersItem>? characters});
}

/// @nodoc
class __$$CharactersImplCopyWithImpl<$Res>
    extends _$CharactersCopyWithImpl<$Res, _$CharactersImpl>
    implements _$$CharactersImplCopyWith<$Res> {
  __$$CharactersImplCopyWithImpl(
      _$CharactersImpl _value, $Res Function(_$CharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? characters = freezed,
  }) {
    return _then(_$CharactersImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharactersItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersImpl implements _Characters {
  const _$CharactersImpl(this.name, final List<CharactersItem>? characters)
      : _characters = characters;

  factory _$CharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersImplFromJson(json);

  @override
  final String? name;
  final List<CharactersItem>? _characters;
  @override
  List<CharactersItem>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Characters(name: $name, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      __$$CharactersImplCopyWithImpl<_$CharactersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersImplToJson(
      this,
    );
  }
}

abstract class _Characters implements Characters {
  const factory _Characters(
          final String? name, final List<CharactersItem>? characters) =
      _$CharactersImpl;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$CharactersImpl.fromJson;

  @override
  String? get name;
  @override
  List<CharactersItem>? get characters;
  @override
  @JsonKey(ignore: true)
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharactersItem _$CharactersItemFromJson(Map<String, dynamic> json) {
  return _CharactersItem.fromJson(json);
}

/// @nodoc
mixin _$CharactersItem {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersItemCopyWith<CharactersItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersItemCopyWith<$Res> {
  factory $CharactersItemCopyWith(
          CharactersItem value, $Res Function(CharactersItem) then) =
      _$CharactersItemCopyWithImpl<$Res, CharactersItem>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$CharactersItemCopyWithImpl<$Res, $Val extends CharactersItem>
    implements $CharactersItemCopyWith<$Res> {
  _$CharactersItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersItemImplCopyWith<$Res>
    implements $CharactersItemCopyWith<$Res> {
  factory _$$CharactersItemImplCopyWith(_$CharactersItemImpl value,
          $Res Function(_$CharactersItemImpl) then) =
      __$$CharactersItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$CharactersItemImplCopyWithImpl<$Res>
    extends _$CharactersItemCopyWithImpl<$Res, _$CharactersItemImpl>
    implements _$$CharactersItemImplCopyWith<$Res> {
  __$$CharactersItemImplCopyWithImpl(
      _$CharactersItemImpl _value, $Res Function(_$CharactersItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$CharactersItemImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersItemImpl implements _CharactersItem {
  const _$CharactersItemImpl(this.name, this.value);

  factory _$CharactersItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersItemImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'CharactersItem(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersItemImplCopyWith<_$CharactersItemImpl> get copyWith =>
      __$$CharactersItemImplCopyWithImpl<_$CharactersItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersItemImplToJson(
      this,
    );
  }
}

abstract class _CharactersItem implements CharactersItem {
  const factory _CharactersItem(final String name, final String value) =
      _$CharactersItemImpl;

  factory _CharactersItem.fromJson(Map<String, dynamic> json) =
      _$CharactersItemImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CharactersItemImplCopyWith<_$CharactersItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
