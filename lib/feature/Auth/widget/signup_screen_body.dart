import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/Auth/widget/end_page.dart';
import 'package:language_ai/feature/Auth/widget/titleField_and_textField.dart';

class SignupScreenBody extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              verticalSpacing(20.h),
              Text(
                MyText.createAnAccount,
                style: MyStyles.semiBold22White,
              ),
              verticalSpacing(32.h),
              TextAndField(
                titleField: MyText.firstName,
                controller: firstNameController,
                textBodyFilled: MyText.placeholderText,
                color: MyColor.color1B2336,
              ),
              verticalSpacing(24.h),
              TextAndField(
                titleField: MyText.lastName,
                controller: lastNameController,
                textBodyFilled: MyText.placeholderText,
                color: MyColor.color1B2336,
              ),
              verticalSpacing(24.h),
              TextAndField(
                titleField: MyText.firstName,
                controller: emailAddressController,
                textBodyFilled: MyText.placeholderText,
                color: MyColor.color1B2336,
              ),
              verticalSpacing(24.h),
              TextAndField(
                titleField: MyText.password,
                controller: passwordController,
                textBodyFilled: MyText.dot,
                color: MyColor.color1B2336,
              ),
              verticalSpacing(24.h),
              TextAndField(
                titleField: MyText.confirmPassword,
                controller: emailAddressController,
                textBodyFilled: MyText.dot,
                color: MyColor.color1B2336,
              ),
              verticalSpacing(34.h),
              EndPage(
                textBigButton: MyText.continuee,
                textFinal1: MyText.alreadyYouMember,
                textFinal2: MyText.login,
                onTapFinal: () {},
                onTapBigButton: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
