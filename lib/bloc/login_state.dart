import 'package:equatable/equatable.dart';
import 'package:newtest/form/form_submissions_status.dart';

class LoginState extends Equatable {
  final String username;
  bool get isValidUsername => username.length > 3;

  final String email;
  bool get isValidEmail => email.length > 8;

  final String password;
  bool get isValidPassword => password.length > 6;

  final FormSubmissionStatus formStatus;

  const LoginState({
    this.username = '',
    this.email = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String? username,
    String? email,
    String? password,
    FormSubmissionStatus? formStatus,
  }) {
    return LoginState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }

  @override
  List<Object?> get props => [username, email, password, formStatus];
}
