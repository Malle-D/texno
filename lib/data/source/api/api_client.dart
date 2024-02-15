import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texno/data/model/categories/all_categories_model.dart';
import 'package:texno/data/model/details/details_model.dart';
import 'package:texno/data/model/slider/slide_model.dart';
import 'package:texno/data/model/special/special_categories_model.dart';
import 'package:texno/data/model/topitem/top_products_model.dart';

import '../../model/branch/shops_location.dart';
import '../../model/brands/brand.dart';
import '../../model/catalog/product_items_model.dart';
import '../../model/new/new_product_model.dart';
import '../../model/slug/products_by_slug.dart';

part 'api_client.g.dart';


@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  
  @GET('https://gateway.texnomart.uz/api/web/v1/category/catalog')
  Future<AllCategoriesModel> getAllCategories({@Query('slug') String slug = ''});

  @GET('https://gateway.texnomart.uz/api/web/v1/content/sliders')
  Future<SliderModel> getSliderModel();

  @GET('https://gateway.texnomart.uz/api/web/v1/home/special-categories')
  Future<SpecialModel> getTopCategories();

  @GET('https://gateway.texnomart.uz/api/web/v1/home/special-products?type=hit_products')
  Future<TopProductsModel> getTopProducts();
  
  @GET('https://gateway.texnomart.uz/api/common/v1/search/filters')
  Future<ProductItemsModel> getProductByCatalog(@Query('category') String category);
  
  @GET("https://gateway.texnomart.uz/api/web/v1/home/special-brands")
  Future<BrandsModel> getAllBrands();
  
  @GET("https://gateway.texnomart.uz/api/web/v1/home/special-products?type=new_products")
  Future<NewProductModel> getAllNewProducts();

  @GET('common/v1/search/filters')
  Future<ProductsBySlug> getProductsBySlug({@Query('category') String category = ''});

  @GET('https://gateway.texnomart.uz/api/web/v1/region/stores-list')
  Future<ShopsMapModel> getShopsLocation();
  
  @GET('https://gateway.texnomart.uz/api/web/v1/product/detail')
  Future<DetailsItemModel> getProductById(@Query('id') String id);

}