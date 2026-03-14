import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.label,
    required this.hint,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.addMore = false,
    this.isObscureText = false,
  });

  final String? label;
  final String hint;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int maxLines;
  final bool addMore;
  final bool isObscureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.label!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColor,
                ),
              ),
              if (widget.addMore)
                Text(
                  "Add more",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor,
                  ),
                ),
            ],
          ),
        if (widget.label != null) SizedBox(height: 8),
        TextField(
          obscureText: widget.isObscureText && !isShowPassword,
          maxLines: widget.maxLines,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            suffixIcon: widget.isObscureText
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    child: Icon(
                      isShowPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColor.hintColor,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColor.textBackground,
            hintText: widget.hint,
            hintStyle: TextStyle(color: AppColor.hintColor),
          ),
        ),
      ],
    );
  }
}
