import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/feature/Auth/widget/titleField_and_textField.dart';
import '../../../core/text.dart';

class EmailAndPassword extends StatelessWidget {
  final TextEditingController emailAddressController;
  final TextEditingController passwordController;

  const EmailAndPassword({
    super.key,
    required this.emailAddressController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextAndField(
          color: MyColor.color1B2336,
          titleField: MyText.emailAddress,
          controller: emailAddressController,
          textBodyFilled: MyText.placeholderText,
        ),
        verticalSpacing(32.h),
        TextAndField(
          color: MyColor.color1B2336,
          titleField: MyText.password,
          controller: passwordController,
          textBodyFilled: MyText.dot,
        ),
      ],
    );
  }
}
