import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_bloc.dart';
import 'package:newtest/bloc/login_event.dart';
import 'package:newtest/bloc/login_state.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            filled: true,
            border: InputBorder.none,
            hintText: 'username',
            label: Text('Merchant'),
          ),
          validator: (value) =>
              state.isValidUsername ? null : 'Username is too short',
          onChanged: (value) => context.read<LoginBloc>().add(
                LoginUsernameChanged(username: value),
              ),
        );
      },
    );
  }
}
