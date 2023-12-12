import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_bloc.dart';
import 'package:newtest/bloc/login_state.dart';

class TitleLogin extends StatelessWidget {
  const TitleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return const Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 17,
          ),
        );
      },
    );
  }
}
