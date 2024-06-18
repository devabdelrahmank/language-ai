import 'package:flutter/material.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/Auth/widget/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyText.signup, style: MyStyles.semiBold22White),
        centerTitle: true,
      ),
      body: SignupScreenBody(),
    );
  }
}
