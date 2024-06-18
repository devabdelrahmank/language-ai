import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/helper/text_button.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/Auth/login_screen.dart';
import 'package:language_ai/feature/onboarding/onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget defultHomePage(Onboarding model, BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35.h,
          width: MediaQuery.of(context).size.width * 0.54.w,
          child: Image.asset(
            model.image,
          ),
        ),
        verticalSpacing(50),
        SmoothPageIndicator(
          controller: boardcontroller,
          count: onbord.length,
          effect: const WormEffect(
            dotColor: Colors.grey,
            dotHeight: 11,
            radius: 16,
            dotWidth: 10,
            spacing: 10,
            activeDotColor: MyColor.colorF76400,
          ),
        ),
        verticalSpacing(40.h),
        Text(model.title1, style: MyStyles.semiBold22White),
        verticalSpacing(8.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            model.title2,
            style: MyStyles.regular15grey,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpacing(50),
        MyTextButton(
          color: MyColor.color5B7BFE,
          bodyWidget: Text(
            MyText.choosealanguage,
            style: MyStyles.semiBold22White.copyWith(
              fontSize: 20,
            ),
          ),
          context: context,
          onTap: () {},
        ),
        verticalSpacing(32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyText.alreadyafillolearn,
              style: MyStyles.regular15grey,
            ),
            horizontalSpacing(5),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              ),
              child: Text(
                MyText.login,
                style: MyStyles.regular15grey.copyWith(
                  color: MyColor.deepPurple,
                ),
              ),
            ),
          ],
        )
      ],
    );
