import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  final List<bool> _checkboxValues = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delete account",
                    style: AppTextStyle.title1,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "We're really sorry to see you go 🥺 Are you sure you want to delete your account? Once you confirm, your data will be gone.",
                    style: AppTextStyle.body3,
                  ),
                  SizedBox(height: 24.h),
                  Column(
                    // Wrap CheckboxListTiles and Dividers in another Column
                    children: [
                      CheckboxListTile(
                        value: _checkboxValues[0],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[0] = newValue!;
                          });
                        },
                        title: Text("I am no longer using my account",
                            style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[0]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                      Divider(height: 1.h, color: Colors.grey.shade300),
                      CheckboxListTile(
                        value: _checkboxValues[1],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[1] = newValue!;
                          });
                        },
                        title: Text("The service is too expensive",
                            style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[1]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                      Divider(height: 1.h, color: Colors.grey.shade300),
                      CheckboxListTile(
                        value: _checkboxValues[2],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[2] = newValue!;
                          });
                        },
                        title: Text("I want to change my phone number",
                            style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[2]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                      Divider(height: 1.h, color: Colors.grey.shade300),
                      CheckboxListTile(
                        value: _checkboxValues[3],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[3] = newValue!;
                          });
                        },
                        title: Text("I don't understand how to use the service",
                            style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[3]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                      Divider(height: 1.h, color: Colors.grey.shade300),
                      CheckboxListTile(
                        value: _checkboxValues[4],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[4] = newValue!;
                          });
                        },
                        title: Text("The service is not available in my city",
                            style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[4]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                      Divider(height: 1.h, color: Colors.grey.shade300),
                      CheckboxListTile(
                        value: _checkboxValues[5],
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValues[5] = newValue!;
                          });
                        },
                        title: Text("Other", style: AppTextStyle.body1),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        checkColor: Colors.white,
                        fillColor: WidgetStateProperty.all<Color?>(
                            _checkboxValues[5]
                                ? Colors.green
                                : Colors.transparent),
                        side: BorderSide(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80.r,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        // Handle delete account action
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        decoration: BoxDecoration(
                          color: AppColors.pink,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Text(
                            "Delete account",
                            style: AppTextStyle.title2
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, right: 8.w),
              child: SizedBox(
                width: 38.r,
                height: 38.r,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: AppColors.grey3,
                  foregroundColor: Colors.black,
                  elevation: 2,
                  shape: const CircleBorder(), // Make the button circular
                  child: Icon(
                    Icons.close,
                    size: 25.r,
                    color: AppColors.grey2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
