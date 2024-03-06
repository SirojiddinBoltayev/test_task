import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/assets.dart';
import '../../../../../constants/color.dart';

class CustomAppBar extends StatefulWidget {
  final bool? isMainAppBar;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({super.key, required this.scaffoldKey, this.isMainAppBar});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      height: 0.11.sh,
      color: AppColors.secondaryPrimaryColor,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.locationIconSvg,
                )),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              // width: 0.35.sw,
              child: SvgPicture.asset(
                Assets.logoImageSvg,
                colorFilter: const ColorFilter.mode(AppColors.primaryColor, BlendMode.dst),
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.messagesSvg,
                )),
          ],
        ),
      ),
    );
  }
}
