import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.title1,
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(subtitle, style: AppTextStyle.body3),
          SizedBox(height: 16.h),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.location_on_outlined,
                color: Colors.grey.shade700, size: 24.sp),
            title: Text(
              "Edit location",
              style: AppTextStyle.body1,
            ),
            onTap: () {
              // TODO: Handle edit location action
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.delete_outline, color: Colors.red, size: 24.sp),
            title: Text(
              "Delete this place",
              style: AppTextStyle.body1.copyWith(color: Colors.red),
            ),
            onTap: () {
              // TODO: Handle delete place action
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
