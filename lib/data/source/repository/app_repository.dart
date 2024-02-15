import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:texno/data/model/brands/brand.dart';
import 'package:texno/data/model/categories/all_categories_model.dart';
import 'package:texno/data/model/details/details_model.dart';
import 'package:texno/data/model/slider/slide_model.dart';
import 'package:texno/data/model/special/special_categories_model.dart';
import 'package:texno/data/model/topitem/top_products_model.dart';
import 'package:texno/data/source/api/api_client.dart';
import 'package:texno/utils/item_holder.dart';

import '../../../di/di.dart';
import '../../model/branch/shops_location.dart';
import '../../model/catalog/product_items_model.dart';
import '../../model/new/new_product_model.dart';

abstract class AppRepository {
  Future<AllCategoriesModel> getAllCategoryModel();

  Future<SliderModel> getSliderModel();

  Future<SpecialModel> getSpecial();

  Future<TopProductsModel> getTopProduct();

  Future<BrandsModel> getAllBrands();

  Future<ShopsMapModel> getAllBranch();

  Future<NewProductModel> getAllNewProduct();

  Future<ProductItemsModel> getProductsByCatalog(String category);

  Future<dynamic> getOrders();

  Future<DetailsItemModel> getItemById(String id);

  List<ItemHolder> getSavedProducts();

  List<ItemHolder> getFavouriteProducts();


  void addProduct(ItemHolder productItem);

  void saveProduct(ItemHolder itemHolder);

  void deleteProduct(ItemHolder itemHolder);

  void likeProduct(ItemHolder itemHolder);

  void saveOrder(List<ItemHolder> items);

  void logOut();

  Future<List<List<ItemHolder>>>getAllOrders();

  void updateProduct(ItemHolder itemHolder, String newCount, bool isFavourite);
}

class AppRepositoryImpl extends AppRepository {
  final api = getIt<ApiClient>();
  var logger = Logger();

  @override
  Future<AllCategoriesModel> getAllCategoryModel() async {
    final response = await api.getAllCategories();
    return response;
  }

  @override
  Future<SliderModel> getSliderModel() async {
    final response = await api.getSliderModel();
    return response;
  }

  @override
  Future<SpecialModel> getSpecial() async {
    final response = await api.getTopCategories();
    return response;
  }

  @override
  Future<TopProductsModel> getTopProduct() async {
    final response = await api.getTopProducts();
    return response;
  }

  @override
  Future<ProductItemsModel> getProductsByCatalog(String category) async {
    final response = await api.getProductByCatalog(category);
    return response;
  }

  @override
  Future<BrandsModel> getAllBrands() async {
    final response = await api.getAllBrands();
    return response;
  }

  @override
  Future<NewProductModel> getAllNewProduct() async {
    final response = await api.getAllNewProducts();
    return response;
  }

  @override
  Future<ShopsMapModel> getAllBranch() async {
    final response = await api.getShopsLocation();
    return response;
  }

  @override
  Future<DetailsItemModel> getItemById(id) async {
    final response = await api.getProductById(id);
    return response;
  }

  @override
  void logOut() {
    final boxSaved = Hive.box('Texnomart');
    final boxOrders = Hive.box('Orders');
    boxOrders.clear();
    boxSaved.clear();
  }

  @override
  void addProduct(ItemHolder productItem) {
    final box = Hive.box('Texnomart');
    if (!checkItem(productItem)) {
      productItem.count = "1";
      productItem.isSaved = true;
      box.add(productItem);
    } else {
      for (var i in box.values) {
        if (i.name == productItem.name) {
          i.count = "1";
          i.isSaved = true;
          i.save();
          break;
        }
      }
    }
  }

  bool checkItem(ItemHolder itemHolder) {
    final box = Hive.box('Texnomart');
    for (var i in box.values) {
      if (itemHolder.name == i.name) {
        return true;
      }
    }
    return false;
  }

  @override
  void likeProduct(ItemHolder itemHolder) {
    final box = Hive.box('Texnomart');
    if (!checkItem(itemHolder)) {
      itemHolder.favourite = true;
      box.add(itemHolder);
    } else {
      for (var i in box.values) {
        if (itemHolder.name == i.name) {
          if (i.favourite) {
            i.favourite = false;
            i.save();
          } else {
            i.favourite = true;
            i.save();
          }
        }
      }
    }
  }

  @override
  void saveProduct(ItemHolder itemHolder) {
    final box = Hive.box('Texnomart');
    if (!checkItem(itemHolder)) {
      logger.d("item not in box and add");
      itemHolder.count = "1";
      itemHolder.isSaved = true;
      box.add(itemHolder);
    } else {
      logger.d("item in box and edit");
      for (var i in box.values) {
        if (i.name == itemHolder.name) {
          if (i.isSaved) {
            i.isSaved = false;
            i.save();
          } else {
            i.isSaved = true;
            i.count = "1";
            i.save();
          }
          break;
        }
      }
    }
  }

  @override
  void deleteProduct(ItemHolder itemHolder) {
    if (!itemHolder.favourite) {
      itemHolder.delete();
    } else {
      itemHolder.isSaved = false;
      itemHolder.save();
    }
  }

  @override
  void updateProduct(ItemHolder itemHolder, String newCount, bool isFavourite) {
    itemHolder.count = newCount;
    itemHolder.favourite = isFavourite;
    logger.d("${itemHolder.count} ${itemHolder.favourite}");
    itemHolder.save();
  }

  @override
  List<ItemHolder> getSavedProducts() {
    final box = Hive.box('Texnomart');
    List<ItemHolder> ls = [];
    for (int i = 0; i < box.length; i++) {
      ls.add(box.getAt(i));
    }
    return ls.where((element) => element.isSaved).toList();
  }

  @override
  List<ItemHolder> getFavouriteProducts() {
    final box = Hive.box('Texnomart');
    List<ItemHolder> ls = [];
    for (int i = 0; i < box.length; i++) {
      ls.add(box.getAt(i));
    }
    Iterable<ItemHolder> result =
        ls.where((element) => element.favourite == true);

    return result.toList();
  }

  @override
  void saveOrder(List<ItemHolder> items) {
    final box = Hive.box('Orders');
    box.add(items);
    final boxSaved = Hive.box('Texnomart');
    for (var o in boxSaved.values) {
      if (o.isSaved && o.favourite) {
        o.isSaved = false;
        o.save();
      } else {
        o.delete();
      }
    }
  }

  @override
  Future<List<List<ItemHolder>>> getAllOrders() async {
    final box = Hive.box('Orders');
    List<List<ItemHolder>> ls = [];
    for (int i = 0; i < box.length; i++) {
      ls.add((box.getAt(i) as List<dynamic>).cast<ItemHolder>());
    }
    logger.d(box.values.length);
    return ls;
  }

  Future<dynamic> getOrders() async {
    final box = Hive.box('Orders');
    return box.values;
  }
}
