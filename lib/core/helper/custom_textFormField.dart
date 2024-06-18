// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/styles.dart';

class CustomTextField extends StatelessWidget {
  final double? sizePadding;
  final Color? colorContainer;
  final Color? colorText;
  final String? text;
  final bool borderDelete;
  final TextEditingController? controller;
  final TextAlign? textAlign;
  final Widget? prefix;
  final Widget? suffix;
  final Function()? suffixPressed;
  final TextInputType? keyboardType;
  final String? Function(String?)? valeditor;
  final TextDirection? textDirection;
  final Function()? onTap;
  final bool? obscureText;
  final Color? fillColor;
  final Function(String)? onchanged;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.borderDelete = false,
    this.maxLines,
    this.fillColor = Colors.white,
    this.obscureText = false,
    required this.onTap,
    this.textDirection,
    required this.valeditor,
    this.sizePadding = 15,
    this.keyboardType = TextInputType.text,
    required this.text,
    required this.controller,
    this.textAlign = TextAlign.end,
    this.suffix,
    this.prefix,
    this.suffixPressed,
    this.colorText,
    this.onchanged,
    this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      onTap: onTap,
      onChanged: (val) {},
      textDirection: textDirection,
      controller: controller!,
      textAlign: textAlign!,
      validator: valeditor,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(bottom: 25, top: 10, right: 15, left: 20),
        suffixIconColor: Colors.grey,
        hintText: text,
        hintStyle: MyStyles.regular15grey.copyWith(),
        fillColor: fillColor,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: borderDelete == false
            ? outlineInputBorder1()
            : outlineInputBorderNote(),
        focusedBorder: borderDelete == false
            ? outlineInputBorder2()
            : outlineInputBorderNote(),
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder1() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0.7,
      ),
    );
  }

  OutlineInputBorder outlineInputBorderNote() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0.7,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder2() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: MyColor.deepPurple,
        width: 0.5,
      ),
    );
  }
}
