part of 'selected_bloc.dart';

@immutable
abstract class SelectedEvent {}

class GetSelectedEvent extends SelectedEvent{
  final String category;

  GetSelectedEvent(this.category);
}