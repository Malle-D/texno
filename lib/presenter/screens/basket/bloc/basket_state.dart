part of 'basket_bloc.dart';

@immutable
abstract class BasketState {}

class BasketInitial extends BasketState {}

class GetAllBasketState extends BasketState{
  final List<ItemHolder> data;

  GetAllBasketState(this.data);
}

class SaveProductChangesState extends BasketState{
  SaveProductChangesState(void updateProduct);
}

class GetUserState extends BasketState{
  final String userName;

  GetUserState(this.userName);
}

class DeleteProductState extends BasketState{
  DeleteProductState(void deleteProduct);
}