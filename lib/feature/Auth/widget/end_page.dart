import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/helper/text_button.dart';
import 'package:language_ai/core/styles.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/Auth/widget/face_or_google.dart';

class EndPage extends StatelessWidget {
  final String textBigButton;
  final String textFinal1;
  final String textFinal2;
  final dynamic Function() onTapFinal;
  final dynamic Function() onTapBigButton;
  const EndPage({
    super.key,
    required this.textBigButton,
    required this.textFinal1,
    required this.textFinal2,
    required this.onTapFinal,
    required this.onTapBigButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextButton(
          onTap: onTapBigButton,
          bodyWidget: Text(
            textBigButton,
            style: MyStyles.semiBold22White,
          ),
          context: context,
          color: MyColor.color5B7BFE,
        ),
        verticalSpacing(24.h),
        Row(
          children: [
            Expanded(child: dividerSpacing()),
            Text(
              MyText.or,
              style: MyStyles.regular15grey,
            ),
            Expanded(child: dividerSpacing()),
          ],
        ),
        verticalSpacing(16.h),
        FaceOrGoogle(
          textFinal1: textFinal1,
          textFinal2: textFinal2,
          onTapFinal: onTapFinal,
        ),
      ],
    );
  }
}
