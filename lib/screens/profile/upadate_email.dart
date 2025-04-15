import 'package:bolt_ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';

class UpdateEmail extends StatefulWidget {
  const UpdateEmail({super.key});

  @override
  State<UpdateEmail> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateEmail> {
  final _emailController = TextEditingController();
  final _emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_emailFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.sp,
                horizontal: 12.sp,
              ),
              child: Text(
                "Update your email",
                style: AppTextStyle.title1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: SizedBox(
                height: 50.sp,
                child: CustomFormField(
                  labelText: "First name",
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.sp,
              ),
              child: Text(
                "We sent an email to verify this address"
                "Please check your inbox.",
                style: AppTextStyle.body1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10.sp), // Added some top padding for visual separation
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Send again",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16.sp), // Applied .sp to fontSize
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }
}
