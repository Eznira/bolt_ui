import 'package:bolt_ui/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;

  const CustomFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool _showSuffixIcon = false;

  void _updateSuffixIcon() {
    setState(() {
      _showSuffixIcon =
          widget.focusNode.hasFocus && widget.controller.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    widget.focusNode.addListener(_updateSuffixIcon);
    widget.controller.addListener(_updateSuffixIcon);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      onFieldSubmitted: (_) {
        FocusScope.of(context).requestFocus(widget.nextFocusNode);
      },
      textInputAction: widget.nextFocusNode != null
          ? TextInputAction.next
          : TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade300,
        labelText: widget.labelText,
        labelStyle: AppTextStyle.body3,
        suffixIcon: _showSuffixIcon
            ? IconButton(
                onPressed: () {
                  widget.controller.clear();
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey.shade600,
                ),
              )
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.green,
            width: 2,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_updateSuffixIcon);
    widget.controller.removeListener(_updateSuffixIcon);
    super.dispose();
  }
}

// TODO: adjust formfield
