part of 'orders_bloc.dart';

@immutable
abstract class OrdersState {}

class OrdersInitial extends OrdersState {}

class GetAllOrdersState extends OrdersState{
  final List<List<ItemHolder>> orders;
  GetAllOrdersState(this.orders);
}

class GetUserNameState extends OrdersState{
  final String userName;

  GetUserNameState(this.userName);
}

