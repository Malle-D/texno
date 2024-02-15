import 'package:bloc/bloc.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';
import 'package:texno/utils/item_holder.dart';

import '../../../../data/source/preference/my_preference.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc() : super(BasketInitial()) {
    final repository = getIt<AppRepository>();
    on<GetAllBasketEvent>((event, emit) {
      emit(GetAllBasketState(repository.getSavedProducts()));
    });
    on<SaveProductChangesEvent>((event, emit) {
      emit(SaveProductChangesState(repository.updateProduct(event.itemHolder, event.newCount, event.isFavourite)));
    });
    on<DeleteProductEvent>((event, emit){
      emit(DeleteProductState(repository.deleteProduct(event.itemHolder)));
    });
    on<ApplyOrderEvent>((event, emit){
      repository.saveOrder(event.orders);
    });
    on<GetUserEvent>((event, emit) {
      emit(GetUserState(MyPreference.getUserName()));
    });
  }
}
