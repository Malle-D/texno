import 'package:bloc/bloc.dart';import 'package:logger/logger.dart';import 'package:meta/meta.dart';import 'package:texno/data/model/brands/brand.dart';import 'package:texno/data/model/special/special_categories_model.dart';import 'package:texno/data/model/topitem/top_products_model.dart';import 'package:texno/utils/item_holder.dart';import '../../../../data/model/catalog/product_items_model.dart';import '../../../../data/model/categories/all_categories_model.dart';import '../../../../data/model/new/new_product_model.dart';import '../../../../data/model/slider/slide_model.dart';import '../../../../data/source/repository/app_repository.dart';import '../../../../di/di.dart';part 'home_event.dart';part 'home_state.dart';class HomeBloc extends Bloc<HomeEvent, HomeState> {  final _repository = getIt<AppRepository>();  var logger = Logger();  HomeBloc() : super(HomeInitial()) {    on<GetSlidersEvent>((event, emit) async {      LoadingState();      try {        SliderModel data = await _repository.getSliderModel();        emit(GetSliderState(data));      } catch (e) {        print(e.toString());      }    });    on<GetAllCategoriesEvent>((event, emit) async {      try {        final data = await _repository.getAllCategoryModel();        emit(GetAllCategoriesState(data));      } catch (e) {        print(e.toString());      }    });    on<GetAllSpecialEvent>((event, emit) async {      try {        final data = await _repository.getSpecial();        emit(GetAllSpecialState(data));      } catch (e) {        print(e.toString());      }    });    on<GetAllTopProductsEvent>((event, emit) async {      try {        final data = await _repository.getTopProduct();        emit(GetProductsState(data));      } catch (e) {        print(e.toString());      }    });    on<GetAllBrandsEvent>((event, emit) async {      try {        final data = await _repository.getAllBrands();        emit(GetAllBrandsState(data));      } catch (e) {        print(e.toString());      }    });    on<GetALlNEwProductEvent>((event, emit) async {      try {        final data = await _repository.getAllNewProduct();        emit(GetALlNEwProductState(data));      } catch (e) {        print(e.toString());      }    });    on<GetAllFavouriteEvent>((event,emit) async {      emit(GetAllFavouriteState(_repository.getFavouriteProducts()));    });    on<GetAllSavedHomeEvent>((event,emit) async {      emit(GetAllSavedHomeState(_repository.getSavedProducts()));    });    on<LikeProductEvent>((event, emit) async {      emit(LikeProductState(_repository.likeProduct(event.itemHolder)));    });    on<SaveProductEvent>((event, emit) async {      emit(LikeProductState(_repository.saveProduct(event.itemHolder)));    });  }}