part of 'branch_bloc.dart';

@immutable
abstract class BranchState {}

class BranchInitial extends BranchState {}

class GetBranchState extends BranchState{
  final ShopsMapModel items;

  GetBranchState(this.items);
}