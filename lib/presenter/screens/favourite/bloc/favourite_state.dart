part of 'favourite_bloc.dart';

@immutable
abstract class FavouriteState {}

class FavouriteInitial extends FavouriteState {}

class GetFavouritesState extends FavouriteState{
  final List<ItemHolder> items;

  GetFavouritesState(this.items);
}