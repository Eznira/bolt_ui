import 'package:flutter/material.dart';

import '/constants/app_color.dart';

// light mode
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: AppColors.white,
    primary: AppColors.grey,
    secondary: AppColors.green,
    inversePrimary: Colors.grey.shade700,
    tertiary: AppColors.pink,
  ),
  useMaterial3: true,
);

// dark mode
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.black45,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
    inversePrimary: Colors.grey.shade200,
    tertiary: Colors.grey.shade800,
  ),
  useMaterial3: true,
);
