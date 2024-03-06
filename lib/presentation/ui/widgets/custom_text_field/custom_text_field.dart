import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final double? borderRadius;
  final Widget? prefixIcon;
  final double? verticalPadding;
  final bool? obscureText;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final String? titleTextField;
  final String? prefixText;
  final TextStyle? prefixTextStyle;
  final TextStyle? titleTextStyle;
  final String? hintText;
  final String? errorText;
  final Function()? onVisibleTap;
  final bool? visiblePassword;
  final bool? isPassword;

  const CustomTextField(
      {super.key,
      this.visiblePassword,
      this.borderRadius,
      this.prefixIcon,
      this.borderColor,
      this.verticalPadding,
      this.controller,
      this.hintText,
      this.errorText,
      this.titleTextField,
      this.titleTextStyle,
      this.keyboardType,
      this.obscureText,
      this.onVisibleTap,
      this.prefixText,
      this.prefixTextStyle,
      this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextField ?? "",
          style: titleTextStyle ?? const TextStyle(fontWeight: FontWeight.w500),
        ),
        4.h.verticalSpace,
        TextField(
          controller: controller,
          obscureText: obscureText ?? false,
          obscuringCharacter: "*",
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
              isDense: true,
              isCollapsed: true,
              filled: true,
              fillColor: AppColors.secondaryPrimaryColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.w, vertical: verticalPadding ?? 8.h),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  borderSide: BorderSide(
                      color: borderColor ?? AppColors.grey.withOpacity(0.3))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  borderSide: BorderSide(
                      color: borderColor ?? AppColors.grey.withOpacity(0.5))),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  borderSide: BorderSide(color: borderColor ?? AppColors.red)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  borderSide: BorderSide(
                      color: borderColor ?? AppColors.grey.withOpacity(0.7))),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  borderSide: BorderSide(color: borderColor ?? AppColors.red)),
              hintText: hintText,
hintStyle: TextStyle(fontWeight: FontWeight.w600),
              errorText: errorText,
              // labelText: 'Life story',
              prefixText: prefixText,

              prefixIcon: prefixIcon,
              prefixIconConstraints: BoxConstraints(
                minHeight: 20.sp,
                minWidth: 20.sp
              ),
              prefixStyle: prefixTextStyle ??
                  const TextStyle(color: AppColors.primaryColor),
              suffix: (isPassword ?? false)
                  ? InkWell(
                      onTap: () => onVisibleTap,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          (visiblePassword ?? false)
                              ? const Icon(
                                  Icons.visibility,
                                  color: AppColors.grey,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: AppColors.grey.withOpacity(0.5),
                                ),
                        ],
                      ),
                    )
                  : null),
        ),
      ],
    );
  }
}
