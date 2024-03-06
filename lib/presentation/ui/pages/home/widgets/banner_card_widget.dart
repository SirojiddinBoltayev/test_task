import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants/assets.dart';
import '../../../../../constants/color.dart';

class HomeNoteCard extends StatefulWidget {
  final String? title;
  final Widget? decoration;
  final String? subTitle;
  final String? imagePath;
  final String? label;
  final String? buttonTitle;
  final Widget? backgroundIcon;
  final Widget? titleChild;
  final Color? backgroundColor;
  final Color? buttonBackgroundColor;

  const HomeNoteCard(
      {super.key,
       this.title,
      this.subTitle,
      this.decoration,
      this.titleChild,
      this.imagePath,
      this.label,
      this.buttonTitle,
      this.backgroundColor,
      this.buttonBackgroundColor,
      this.backgroundIcon});

  @override
  State<HomeNoteCard> createState() => _HomeNoteCardState();
}

class _HomeNoteCardState extends State<HomeNoteCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0.sp),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.sp),
        child: Container(
          // padding: EdgeInsets.all(10.sp),

          width: 0.61.sw,

          decoration: BoxDecoration(
            color: widget.backgroundColor ?? AppColors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              (widget.imagePath?.isNotEmpty ?? false)
                  ? Image.asset(
                      widget.imagePath ?? "",
                      fit: BoxFit.fill
                      // width: double.infinity,
                    )
                  : 0.verticalSpace,
              Padding(
                padding: EdgeInsets.only(top: 10.sp, right: 10.sp, left: 5.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.titleChild ?? const  SizedBox(),
                    (widget.title?.isNotEmpty ?? false)
                        ? Padding(
                            padding: EdgeInsets.only(right: 12.0.sp),
                            child: Text(
                              widget.title ?? "",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                              maxLines: 2,
                            ),
                          )
                        : 0.verticalSpace,
                    (widget.title?.isNotEmpty ?? false)
                        ? 8.h.verticalSpace
                        : 0.verticalSpace,
                    (widget.label?.isNotEmpty ?? false)
                        ? Text(
                            widget.label ?? "",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                            maxLines: 1,
                          )
                        : 0.verticalSpace,
                    (widget.label?.isNotEmpty ?? false)
                        ? 8.h.verticalSpace
                        : 0.verticalSpace,
                    (widget.subTitle?.isNotEmpty ?? false)
                        ? Text(
                            widget.subTitle ?? "",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                            maxLines: 1,
                          )
                        : 0.verticalSpace,
                  ],
                ),
              ),
              (widget.imagePath?.isEmpty ?? false)
                  ? Positioned(
                      right: -1,
                      bottom: -1,
                      child: Opacity(
                          opacity: 0.9,
                          child: widget.backgroundIcon ??
                              SvgPicture.asset(
                                Assets.boxSvg,
                                height: 0.11.sh,
                              )))
                  : 0.verticalSpace,
              (widget.imagePath?.isEmpty ?? false)
                  ? Positioned(
                      right: 8.sp,
                      top: 15.sp,
                      child: Opacity(
                          opacity: 0.9,
                          child: widget.backgroundIcon ??
                              SvgPicture.asset(
                                Assets.checkBoxSvg,
                                height: 0.04.sh,
                              )))
                  : 0.verticalSpace,
              (widget.buttonTitle?.isNotEmpty ?? false)
                  ? Positioned(
                      left: 12.sp,
                      bottom: 12.sp,
                      child: Container(
                          decoration: BoxDecoration(
                              color: widget.buttonBackgroundColor ??
                                  AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            widget.buttonTitle ?? "",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          )))
                  : const SizedBox(),
             widget.decoration ??
                   const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
