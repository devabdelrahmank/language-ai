import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textButton(Color color, Widget bodyWidget) => Container(
      width: 327.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: bodyWidget),
    );
