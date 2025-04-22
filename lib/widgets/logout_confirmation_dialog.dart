import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showLogoutConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        contentPadding: EdgeInsets.all(20.sp),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Are you sure you want to log out?",
              textAlign: TextAlign.center,
              style: AppTextStyle.title3,
            ),
            SizedBox(height: 18.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement actual logout logic here
                  Navigator.pop(context); // Close the dialog
                  // Navigate to login screen or perform logout action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.pink, // Use a red-like color
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  "Log out",
                  style: AppTextStyle.title3.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  side: BorderSide(color: Colors.transparent),
                  backgroundColor: AppColors.grey,
                ),
                child: Text("Back", style: AppTextStyle.title3),
              ),
            ),
          ],
        ),
      );
    },
  );
}
