import 'package:flutter/material.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/feature/Auth/widget/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login', style: MyStyles.semiBold22White),
        centerTitle: true,
      ),
      body: LoginScreenBody(),
    );
  }
}
