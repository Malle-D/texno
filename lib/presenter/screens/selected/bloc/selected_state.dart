part of 'selected_bloc.dart';

@immutable
abstract class SelectedState {}

class SelectedInitial extends SelectedState {}

class GetSelectedState extends SelectedState{
  final ProductItemsModel data;

  GetSelectedState(this.data);
}