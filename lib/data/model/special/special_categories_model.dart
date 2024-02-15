import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_categories_model.g.dart';
part 'special_categories_model.freezed.dart';

@freezed
class SpecialModel with _$SpecialModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialModel(
  bool? success,
  String? message,
  int? code,
      SpecialItems? data,
      ) = _SpecialModel;

  factory SpecialModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialModelFromJson(json);
}

@freezed
class SpecialItems with _$SpecialItems {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialItems(
  List<SpecialItem?>? data
      ) = _SpecialItems;

  factory SpecialItems.fromJson(Map<String, dynamic> json) =>
      _$SpecialItemsFromJson(json);
}

@freezed
class SpecialItem with _$SpecialItem {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialItem(
  String? title,
  String? image,
  String? slug,
      ) = _SpecialItem;

  factory SpecialItem.fromJson(Map<String, dynamic> json) =>
      _$SpecialItemFromJson(json);
}
