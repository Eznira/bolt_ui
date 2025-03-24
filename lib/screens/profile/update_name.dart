import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackButton(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 12,
            ),
            child: Text(
              "Update your name",
              style: AppTextStyle.title1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Text(
              "Please enter your name as it appers"
              "on your ID or passport.",
              style: AppTextStyle.body1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomFormField(
              labelText: "First name",
              controller: _firstName,
              focusNode: _firstNameFocusNode,
              nextFocusNode: _lastNameFocusNode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomFormField(
              labelText: "Last name",
              controller: _lastName,
              focusNode: _lastNameFocusNode,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
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
