import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/preference/my_preference.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    final repository = getIt<AppRepository>();
    on<GetProfileUserEvent>((event, emit) {
      emit(GetProfileUserState(MyPreference.getUserName()));
    });
    on<LogOutEvent>((event, emit){
      MyPreference.logOut();
      repository.logOut();
    });
  }
}
