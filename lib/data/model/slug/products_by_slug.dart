import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_by_slug.g.dart';
part 'products_by_slug.freezed.dart';

@freezed
class ProductsBySlug with _$ProductsBySlug{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory ProductsBySlug(
      bool? success,
      String? message,
      int? code,
      ProductItems? data,
      ) = _ProductsBySlug;

  factory ProductsBySlug.fromJson(Map<String, dynamic> json) =>
      _$ProductsBySlugFromJson(json);
}

@freezed
class ProductItems with _$ProductItems {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory ProductItems(
      List<Products>? products,
      List<Filter>? filter,
      Price? price,
      List<Stickers>? stickers,
      List<Brand>? brands,
      List<dynamic>? saleMonths,
      int? saleMonthsCount,
      int? brandsCount,
      Pagination? pagination,
      ) = _ProductItems;

  factory ProductItems.fromJson(Map<String, dynamic> json) =>
      _$ProductItemsFromJson(json);
}

@freezed
class Products with _$Products {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Products(
      int? id,
      String? name,
      String? image,
      dynamic saleMonths,
      List<dynamic>? stickers,
      String? availability,
      int? discount,
      String? code,
      List<MainCharacters>? mainCharacters,
      int? salePrice,
      String? fSalePrice,
      dynamic oldPrice,
      dynamic fOldPrice,
      double? loanPrice,
      String? fLoanPrice,
      String? axiomMonthlyPrice,
      int? reviewsCount,
      dynamic reviewsAverage,
      int? allCount,
      Brand? brand,
      ) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class MainCharacters with _$MainCharacters {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory MainCharacters(
      String? name,
      String? value,
      int? order,
      ) = _MainCharacters;

  factory MainCharacters.fromJson(Map<String, dynamic> json) =>
      _$MainCharactersFromJson(json);
}

@freezed
class Brand with _$Brand {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Brand(
      int? id,
      String? slug,
      String? name,
      ) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Filter with _$Filter {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Filter(
      int? id,
      String? name,
      int? count,
      List<Values>? values,
      ) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
class Values with _$Values {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Values(
      int? id,
      String? value,
      int? count,
      ) = _Values;

  factory Values.fromJson(Map<String, dynamic> json) => _$ValuesFromJson(json);
}

@freezed
class Price with _$Price {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Price(
      int? maxPrice,
      int? minPrice,
      ) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Stickers with _$Stickers {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Stickers(
      int? id,
      String? name,
      int? count,
      ) = _Stickers;

  factory Stickers.fromJson(Map<String, dynamic> json) =>
      _$StickersFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Pagination(
      int? totalCount,
      int? currentPage,
      int? totalPage,
      int? pageSize,
      ) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
