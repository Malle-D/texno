import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';

import '../../../../utils/item_holder.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteInitial()) {
    final repository = getIt<AppRepository>();
    on<GetFavouritesEvent>((event, emit) {
      emit(GetFavouritesState(repository.getFavouriteProducts()));
    });
  }
}
