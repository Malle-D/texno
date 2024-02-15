import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/preference/my_preference.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';
import 'package:texno/utils/item_holder.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersInitial()) {
    final repository = getIt<AppRepository>();
    on<GetAllOrdersEvent>((event, emit) async {
      emit(GetAllOrdersState(await repository.getAllOrders()));
    });

    on<GetUserNameEvent>((event, emit) {
      emit(GetUserNameState(MyPreference.getUserName()));
    });

    on<RegisterUserEvent>((event, emit){
      MyPreference.setUser(event.userName);
      MyPreference.setPhone(event.phone);
    });
  }
}
