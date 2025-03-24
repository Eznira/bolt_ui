import 'package:bolt_ui/constants/app_color.dart';
import 'package:bolt_ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

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
              "Update your email",
              style: AppTextStyle.title1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomFormField(
              labelText: "First name",
              controller: _emailController,
              focusNode: _emailFocusNode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Text(
              "We sent an email to verify this address"
              "Please check your inbox.",
              style: AppTextStyle.body1,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Send again",
              style: TextStyle(color: Colors.green),
            ),
          )
        ],
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
