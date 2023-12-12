import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/login/login_screen.dart';
import 'package:newtest/repository/login_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        primarySwatch: Colors.purple,
      ),
      home: RepositoryProvider(
        create: (context) => LoginRepository(),
        child: const LoginScreen(),
      ),
    );
  }
}
