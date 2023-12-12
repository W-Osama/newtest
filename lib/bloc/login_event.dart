import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class LoginUsernameChanged extends LoginEvent {
  final String? username;

  LoginUsernameChanged({this.username});

  @override
  List<Object?> get props => [username];
}

class LoginEmailChanged extends LoginEvent {
  final String? email;

  LoginEmailChanged({this.email});

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  final String? password;

  LoginPasswordChanged({this.password});

  @override
  List<Object?> get props => [password];
}

class LoginSubmitted extends LoginEvent {
  @override
  List<Object?> get props => [];
}
