part of 'details_bloc.dart';

@immutable
abstract class DetailsEvent {}

class AddEvent extends DetailsEvent{
  final ItemHolder itemHolder;

  AddEvent(this.itemHolder);
}

class GetItemById extends DetailsEvent {
  final String id;

  GetItemById(this.id);
}

class GetAllSavedEvent extends DetailsEvent{}

class GetAllFavouriteDetailsEvent extends DetailsEvent {}