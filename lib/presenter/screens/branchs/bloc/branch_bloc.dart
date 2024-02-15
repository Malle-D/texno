import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texno/data/source/repository/app_repository.dart';
import 'package:texno/di/di.dart';

import '../../../../data/model/branch/shops_location.dart';

part 'branch_event.dart';
part 'branch_state.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  BranchBloc() : super(BranchInitial()) {
    final repository = getIt<AppRepository>();
    on<GetBranchEvent>((event, emit) async {
      emit(GetBranchState(await repository.getAllBranch()));
    });
  }
}
