import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatePhoneNumber extends StatefulWidget {
  const UpdatePhoneNumber({super.key});

  @override
  State<UpdatePhoneNumber> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdatePhoneNumber> {
  final _phoneNumberController = TextEditingController();
  final _phoneNumberFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_phoneNumberFocusNode);
    });
  }

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
                      vertical: 8.sp,
                      horizontal: 12.sp,
                    ),
                    child: Text(
                      "Update your phone number",
                      style: AppTextStyle.title1,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.sp,
                    ),
                    child: Text(
                      "We'll send a code for verification",
                      style: AppTextStyle.body1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.sp,
                      horizontal: 12.sp,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50.sp,
                          width: 120.sp,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12.sp),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.flag,
                                size: 28.sp,
                              ),
                              Text(
                                "+234",
                                style: AppTextStyle.body1,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down_circle_outlined,
                                  size: 28.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12.sp,
                        ),
                        Expanded(
                          child: Container(
                            height: 50.sp,
                            width: 120.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            child: CustomFormField(
                              labelText: "Phone number",
                              controller: _phoneNumberController,
                              focusNode: _phoneNumberFocusNode,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.sp,
                              ),
                              child: Icon(
                                Icons.phone_android,
                                size: 20.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "+23408078140648",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.radio_button_on,
                            size: 24.sp, // Added size for the icon
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: SizedBox(
                      height: 4.sp,
                      child: Divider(
                        height: 4.sp,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.sp,
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                size: 20.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "ihimarinze@gmail.com",
                              style: AppTextStyle.body1,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.radio_button_on,
                            color: AppColors.green,
                            size: 24.sp, // Added size for the icon
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80.sp,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10.sp,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.sp,
                  ),
                  child: Text(
                    "Bolt will not send anything without"
                    "your consent.",
                    style: AppTextStyle.body2,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 4.sp),
                  child: Container(
                    height: 40.sp,
                    decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _phoneNumberFocusNode.dispose();
    _phoneNumberController.dispose();

    super.dispose();
  }
}
