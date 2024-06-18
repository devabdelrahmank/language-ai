import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextButton extends StatelessWidget {
  final Color color;
  final Widget bodyWidget;
  final BuildContext context;
  final Function() onTap;
  const MyTextButton({
    super.key,
    required this.bodyWidget,
    required this.context,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 40.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: bodyWidget),
      ),
    );
  }
}
