import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/image.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/Auth/sign_screen.dart';
import 'package:language_ai/feature/Auth/widget/email_and_password.dart';
import 'package:language_ai/feature/Auth/widget/end_page.dart';

class LoginScreenBody extends StatelessWidget {
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.166.h,
                width: MediaQuery.of(context).size.width * 0.54.w,
                child: Image.asset(MyImage.im1),
              ),
              verticalSpacing(10.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  MyText.forFree,
                  style: MyStyles.semiBold22White,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpacing(32.h),
              EmailAndPassword(
                emailAddressController: emailAddressController,
                passwordController: passwordController,
              ),
              verticalSpacing(12.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  MyText.forgotPassword,
                  style: MyStyles.regular15grey,
                ),
              ),
              verticalSpacing(32.h),
              EndPage(
                textBigButton: MyText.login,
                textFinal1: MyText.notYouMember,
                textFinal2: MyText.signup,
                onTapFinal: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (ctx) => const SignupScreen()),
                  );
                },
                onTapBigButton: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
