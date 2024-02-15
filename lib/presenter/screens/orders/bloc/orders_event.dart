part of 'orders_bloc.dart';

@immutable
abstract class OrdersEvent {}

class GetAllOrdersEvent extends OrdersEvent{}

class GetUserNameEvent extends OrdersEvent{}

class RegisterUserEvent extends OrdersEvent{
   final String userName;
   final String phone;

   RegisterUserEvent(this.userName, this.phone);
}