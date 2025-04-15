import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateName extends StatefulWidget {
  const UpdateName({super.key});

  @override
  State<UpdateName> createState() => _UpdateNameState();
}

class _UpdateNameState extends State<UpdateName> {
  final _firstName = TextEditingController();
  final _firstNameFocusNode = FocusNode();
  final _lastName = TextEditingController();
  final _lastNameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackButton(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 12.w,
                    ),
                    child: Text(
                      "Update your name",
                      style: AppTextStyle.title1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                    ),
                    child: Text(
                      "Please enter your name as it appers"
                      "on your ID or passport.",
                      style: AppTextStyle.body1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: SizedBox(
                      height: 50.sp,
                      child: CustomFormField(
                        labelText: "First name",
                        controller: _firstName,
                        focusNode: _firstNameFocusNode,
                        nextFocusNode: _lastNameFocusNode,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: SizedBox(
                      height: 50.sp,
                      child: CustomFormField(
                        labelText: "Last name",
                        controller: _lastName,
                        focusNode: _lastNameFocusNode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10.h,
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Container(
                height: 40.sp,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstName.dispose();
    _lastName.dispose();
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    super.dispose();
  }
}
