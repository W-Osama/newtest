import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_bloc.dart';
import 'package:newtest/bloc/login_event.dart';
import 'package:newtest/bloc/login_state.dart';
import 'package:newtest/form/form_submissions_status.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.formKey}) : super(key: key);

  final dynamic formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.formStatus is FormSubmitting
            ? const Center(child: CircularProgressIndicator())
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color.fromARGB(255, 22, 96, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.zero,
                  side: BorderSide.none,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<LoginBloc>().add(LoginSubmitted());
                  }
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              );
      },
    );
  }
}
