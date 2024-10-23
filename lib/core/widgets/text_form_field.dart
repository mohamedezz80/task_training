import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/syles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? labelStyle;
  final String labelText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final int? maxLine;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.labelStyle,
    required this.labelText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.maxLine,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLine ?? 1,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.borderFieldColor,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.borderFieldColor,
                width: 1.3,
              ),
            ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        labelStyle: labelStyle ?? MyTextStyle.font14GreyLabelW500,
        labelText: labelText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorManager.mainYellow,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: MyTextStyle.font14GreyW500,
      validator: (value) {
        return validator(value);
      },
    );
  }
}