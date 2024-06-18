import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/helper/text_button.dart';
import 'package:language_ai/core/image.dart';
import 'package:language_ai/core/styles.dart';

class FaceOrGoogle extends StatelessWidget {
  final Function() onTapFinal;
  final String textFinal1;
  final String textFinal2;
  const FaceOrGoogle({
    super.key,
    required this.onTapFinal,
    required this.textFinal1,
    required this.textFinal2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MyTextButton(
                onTap: () {},
                bodyWidget: Image.asset(
                  MyImage.face,
                  height: 25,
                ),
                context: context,
                color: MyColor.color1B2336,
              ),
            ),
            horizontalSpacing(15),
            Expanded(
              child: MyTextButton(
                onTap: () {},
                bodyWidget: Image.asset(
                  MyImage.google,
                  height: 25,
                ),
                context: context,
                color: MyColor.color1B2336,
              ),
            ),
          ],
        ),
        verticalSpacing(16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textFinal1,
              style: MyStyles.regular15grey,
            ),
            horizontalSpacing(5),
            InkWell(
              onTap: onTapFinal,
              child: Text(
                textFinal2,
                style: MyStyles.regular15grey.copyWith(
                  color: MyColor.deepPurple,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
