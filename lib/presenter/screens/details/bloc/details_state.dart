part of 'details_bloc.dart';

@immutable
abstract class DetailsState {}

class DetailsInitial extends DetailsState {}

class AddState extends DetailsState{}

class GetAllSavedState extends DetailsState {
  final List<ItemHolder> data;

  GetAllSavedState(this.data);
}

class GetAllFavouriteDetailsState extends DetailsState {
  final List<ItemHolder> data;

  GetAllFavouriteDetailsState(this.data);
}

class GetItemByIdState extends DetailsState{
  final DetailsItemModel itemById;

  GetItemByIdState(this.itemById);
}
