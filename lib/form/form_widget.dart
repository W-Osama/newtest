import 'package:flutter/material.dart';
import 'package:newtest/login/email_field.dart';
import 'package:newtest/login/login_button.dart';
import 'package:newtest/login/password_field.dart';
import 'package:newtest/login/text_sign_up.dart';
import 'package:newtest/login/username_field.dart';

class FormWidget extends StatelessWidget {
  FormWidget({
    Key? key,
  }) : super(key: key);

  final dynamic _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const UsernameField(),
              const SizedBox(height: 15),
              const EmailField(),
              const SizedBox(height: 15),
              const PasswordField(),
              const SizedBox(
                height: 55,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              LoginButton(formKey: _formKey),
              const SizedBox(height: 50),
              const TextSignUp(
                textone: " Don't have an account? ",
                texttwo: "Sign up ",
              ),
            ],
          ),
        ));
  }
}
