import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/model/catalog/product_items_model.dart';

import '../../../../data/source/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'selected_event.dart';
part 'selected_state.dart';

class SelectedBloc extends Bloc<SelectedEvent, SelectedState> {
  SelectedBloc() : super(SelectedInitial()) {

    final repository = getIt<AppRepository>();

    on<GetSelectedEvent>((event, emit) async {
      try {
        final data = await repository.getProductsByCatalog(event.category);
        emit(GetSelectedState(data));
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
