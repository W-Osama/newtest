import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_event.dart';
import 'package:newtest/bloc/login_state.dart';
import 'package:newtest/form/form_submissions_status.dart';
import 'package:newtest/repository/login_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository? authRepo;

  LoginBloc({this.authRepo}) : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await mapEventToState(event, emit);
    });
  }

  Future mapEventToState(LoginEvent event, Emitter<LoginState> emit) async {
    // Username updated
    if (event is LoginUsernameChanged) {
      emit(state.copyWith(username: event.username));

      // Email updated
    } else if (event is LoginEmailChanged) {
      emit(state.copyWith(password: event.email));

      // Password updated
    } else if (event is LoginPasswordChanged) {
      emit(state.copyWith(password: event.password));
    } // Form submitted
    if (event is LoginSubmitted) {
      emit(state.copyWith(formStatus: FormSubmitting()));
      try {
        await authRepo?.login();
        emit(state.copyWith(formStatus: SubmissionSuccess()));
      } catch (e) {
        emit(state.copyWith(formStatus: SubmissionFailed(e)));
      }
    }
  }
}
