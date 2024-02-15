part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class GetProfileUserState extends ProfileState{
  final String name;

  GetProfileUserState(this.name);
}

class LogOutState extends ProfileState{}