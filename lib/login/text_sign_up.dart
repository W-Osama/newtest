import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/bloc/login_bloc.dart';
import 'package:newtest/bloc/login_state.dart';

class TextSignUp extends StatelessWidget {
  final String textone;
  final String texttwo;

  const TextSignUp({
    super.key,
    required this.texttwo,
    required this.textone,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textone,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                texttwo,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        );
      },
    );
  }
}
