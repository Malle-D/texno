part of 'basket_bloc.dart';

@immutable
abstract class BasketEvent {}

class GetAllBasketEvent extends BasketEvent{}

class SaveProductChangesEvent extends BasketEvent{
  final ItemHolder itemHolder;
  final String newCount;
  final bool isFavourite;

  SaveProductChangesEvent(this.itemHolder, this.newCount, this.isFavourite);
}
class GetUserEvent extends BasketEvent{}

class DeleteProductEvent extends BasketEvent{
  final ItemHolder itemHolder;

  DeleteProductEvent(this.itemHolder);
}

class ApplyOrderEvent extends BasketEvent {
  final List<ItemHolder> orders;

  ApplyOrderEvent(this.orders);
}