import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class BrandsModel with _$BrandsModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory BrandsModel(
  bool? success,
  String? message,
  int? code,
  BrandData? data,
      ) = _BrandsModel;

  factory BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsModelFromJson(json);
}

@freezed
class BrandData with _$BrandData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory BrandData(
  List<BrandItem>? data
      ) = _Data;

  factory BrandData.fromJson(Map<String, dynamic> json) =>
      _$BrandDataFromJson(json);
}

@freezed
class BrandItem with _$BrandItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory BrandItem(
  String? name,
  String? slug,
  String? image,
  String? imageAlt,
  // Meta? meta,
      ) = _BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) => _$BrandItemFromJson(json);
}

// @freezed
// class Meta with _$Meta {
//   @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
//   const factory Meta(
//   String? title,
//   Null? description,
//   Null? keywords,
//       ) = _Meta;
//
//   factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
// }