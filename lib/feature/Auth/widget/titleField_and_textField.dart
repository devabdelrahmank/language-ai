import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/helper/custom_textFormField.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/styles.dart';

class TextAndField extends StatelessWidget {
  final String titleField;
  final String textBodyFilled;
  final TextEditingController controller;
  final dynamic Function()? onTap;
  final String? Function(String?)? valeditor;
  final Color color;
  const TextAndField({
    super.key,
    required this.titleField,
    required this.controller,
    this.onTap,
    required this.textBodyFilled,
    this.valeditor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            titleField,
            style: MyStyles.regular15grey.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        verticalSpacing(8.h),
        CustomTextField(
          sizePadding: 25,
          fillColor: color,
          onTap: onTap,
          valeditor: valeditor,
          text: textBodyFilled,
          controller: controller,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
