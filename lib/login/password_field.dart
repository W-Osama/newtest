import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_bloc.dart';
import 'package:newtest/bloc/login_event.dart';
import 'package:newtest/bloc/login_state.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          filled: true,
          border: InputBorder.none,
          hintText: 'Password',
          label: Text('Password'),
        ),
        validator: (value) =>
            state.isValidPassword ? null : 'Password is too short',
        onChanged: (value) => context.read<LoginBloc>().add(
              LoginPasswordChanged(password: value),
            ),
      );
    });
  }
}
