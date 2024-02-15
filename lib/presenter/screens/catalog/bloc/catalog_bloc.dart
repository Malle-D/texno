import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/model/topitem/top_products_model.dart';

import '../../../../data/model/catalog/product_items_model.dart';
import '../../../../data/model/categories/all_categories_model.dart';
import '../../../../data/source/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial()) {
    final repository = getIt<AppRepository>();
    on<GetAllCatalogEvent>((event, emit) async {
      try {
        final data = await repository.getAllCategoryModel();
        emit(GetAllCatalogState(data));
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
