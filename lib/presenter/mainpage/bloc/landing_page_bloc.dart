import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';

part 'landing_page_event.dart';
part 'landing_page_state.dart';

class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(LandingPageState("")) {
    final repository = getIt<AppRepository>();
    on<GetBasketCount>((event, emit) {
      var logger = Logger();
      emit(LandingPageState(repository.getSavedProducts().length.toString()));
    });
  }
}
