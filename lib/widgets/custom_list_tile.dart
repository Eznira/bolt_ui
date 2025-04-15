// widgets/custom_list_tile.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart'; // Assuming AppTextStyle is here

class CustomProfileListTile extends StatefulWidget {
  final IconData leadingIcon;
  final String title;
  final String? subtitle;
  final Widget? navigateTo;

  const CustomProfileListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.subtitle,
    this.navigateTo,
  });

  @override
  State<CustomProfileListTile> createState() => _CustomProfileListTileState();
}

class _CustomProfileListTileState extends State<CustomProfileListTile> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      child: InkWell(
        onTap: widget.navigateTo != null
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.navigateTo!),
                );
              }
            : null,
        child: Container(
          color: _isHovering ? Colors.grey.shade200 : Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 8.sp),
          child: Row(
            children: [
              Icon(
                widget.leadingIcon,
                color: Colors.grey.shade700,
                size: 28.sp,
              ),
              SizedBox(width: 10.sp),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: AppTextStyle.body1, // Using your body1 style
                    ),
                    if (widget.subtitle != null)
                      Text(
                        widget.subtitle!,
                        style: AppTextStyle.body2, // Using your body2 style
                      ),
                  ],
                ),
              ),
              Icon(Icons.navigate_next_outlined,
                  color: Colors.grey.shade700, size: 24.sp),
            ],
          ),
        ),
      ),
    );
  }
}
