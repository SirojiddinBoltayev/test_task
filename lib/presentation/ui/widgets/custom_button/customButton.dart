
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/color.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? splashColor;
  final Color? focusColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final EdgeInsets? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Function? onTap;

  const CustomButton({
    super.key,
    required this.child,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
    this.alignment,
    this.width,
    this.height,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
    this.splashColor,
    this.fontWeight,
    this.fontSize,
    this.textColor,
    this.onTap,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor ?? AppColors.primaryColor,
      borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
      child: InkWell(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
        splashColor: widget.splashColor ?? AppColors.white.withOpacity(0.3),
        focusColor: widget.focusColor ?? AppColors.white.withOpacity(0.3),
        highlightColor: widget.highlightColor ?? AppColors.white.withOpacity(0.3),
        hoverColor: widget.hoverColor ?? AppColors.white.withOpacity(0.3),
        onTap: () =>widget.onTap?.call(),
        child: Container(
            height: widget.height,
            width: widget.width ?? 1.sw,
            alignment: widget.alignment ?? Alignment.center,
            decoration: BoxDecoration(
              // color: AppColors.primaryColor,
              borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
            ),
            padding: widget.padding ?? const EdgeInsets.all(12),
            child: widget.child),
      ),
    );
  }
}
