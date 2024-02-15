import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_product_model.g.dart';
part 'new_product_model.freezed.dart';

@freezed
class NewProductModel with _$NewProductModel {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory NewProductModel(
  bool? success,
  String? message,
  int? code,
      NewProductItem? data,
      ) = _NewProductModel;

  factory NewProductModel.fromJson(Map<String, dynamic> json) =>
      _$NewProductModelFromJson(json);
}

@freezed
class NewProductItem with _$NewProductItem {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory NewProductItem(
  List<NewProductData>? data
      ) = _NewProductItem;

  factory NewProductItem.fromJson(Map<String, dynamic> json) =>
      _$NewProductItemFromJson(json);
}
@freezed
class NewProductData with _$NewProductData {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory NewProductData(
  int? id,
  String? name,
  String? image,
  String? availability,
  String? axiomMonthlyPrice,
  int? salePrice,
  // Null? oldPrice,
  int? reviewsCount,
  // Null? reviewsAverage,
  int? allCount,
  // List<Null>? stickers,
  // List<Null>? saleMonths,
      ) = _NewProductData;

  factory NewProductData.fromJson(Map<String, dynamic> json) =>
      _$NewProductDataFromJson(json);
}