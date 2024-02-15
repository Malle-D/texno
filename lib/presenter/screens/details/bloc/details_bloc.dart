import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/model/details/details_model.dart';
import 'package:texno/utils/item_holder.dart';

import '../../../../data/source/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitial()) {
    final repository = getIt<AppRepository>();
    on<AddEvent>((event, emit) {
      repository.addProduct(event.itemHolder);
    });
    on<GetAllSavedEvent>((event,emit) async {
      emit(GetAllSavedState(repository.getSavedProducts()));
    });
    on<GetItemById>((event,emit)async {
      emit(GetItemByIdState(await repository.getItemById(event.id)));
    });
    on<GetAllFavouriteDetailsEvent>((event,emit) async {
      emit(GetAllFavouriteDetailsState(repository.getFavouriteProducts()));
    });
  }
}
