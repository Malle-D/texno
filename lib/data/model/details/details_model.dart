import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_model.freezed.dart';
part 'details_model.g.dart';

@freezed
class DetailsItemModel with _$DetailsItemModel {
    @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
    factory DetailsItemModel.fromJson(Map<String, dynamic> json) =>
        _$DetailsItemModelFromJson(json);
  const factory DetailsItemModel(
  bool? success,
  String? message,
  int? code,
  ItemData? data,
      ) = _DetailsItemModel;

}

@freezed
class ItemData with _$ItemData {

    @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
    factory ItemData.fromJson(Map<String, dynamic> json) =>
        _$ItemDataFromJson(json);
  const factory ItemData(
  ItemDesc? data,
      ) = _ItemData;

}

@freezed
class ItemDesc with _$ItemDesc {
    @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
    factory ItemDesc.fromJson(Map<String, dynamic> json) =>
        _$ItemDescFromJson(json);
  const factory ItemDesc(
  int? id,
  String? name,
  List<String>? largeImages,
  int? salePrice,
  String? monthlyPrice,
  String? code,
  String? description,
  List<Characters>? characters
      ) = _ItemDesc;

}

@freezed
class Characters with _$Characters {

    @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
    factory Characters.fromJson(Map<String, dynamic> json) =>
        _$CharactersFromJson(json);
  const factory Characters(
String? name,
List<CharactersItem>? characters,
      ) = _Characters;
}

@freezed
class CharactersItem with _$CharactersItem {
    @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
    factory CharactersItem.fromJson(Map<String, dynamic> json) =>
      _$CharactersItemFromJson(json);
  const factory CharactersItem(
      String name,
      String value
      ) = _CharactersItem;

}
