import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  static const Color green = Color(0xFF32BA78); //jungle green
  static const Color pink = Color(0xFFFF5A6E); //wild watermelon
  static const Color grey = Color(0xFFF4F4F6); //athens grey
  static final Color grey2 = Colors.grey.shade700; //athens grey
  static final Color grey3 = Colors.grey.shade300; //athens grey
  static const Color white = Colors.white;
}

class AppTextStyle {
  static final title1 = TextStyle(
    color: Colors.grey.shade900,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static final title2 = TextStyle(
    color: Colors.grey.shade700,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
  );

  static final title3 = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
  static final title4 = TextStyle(
    color: Colors.grey.shade300,
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
  );

  static final body1 = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static final body2 = TextStyle(
    color: Colors.grey.shade600,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );
  static final body3 = TextStyle(
    color: Colors.grey.shade600,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static final body4 = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 13.sp,
  );
  static final body5 = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );
}
