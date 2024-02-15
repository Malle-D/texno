part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {}

class GetProfileUserEvent extends ProfileEvent{}

class LogOutEvent extends ProfileEvent{}