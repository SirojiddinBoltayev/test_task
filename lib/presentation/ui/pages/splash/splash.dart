import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/routes/routes.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/color.dart';

import '../../../../routes/app_navigator.dart';
import '../widgets/loading_animation.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashState();
}

class _SplashState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  navigator() async {
    AppNavigator.pushAndPopUntil(const MainRoute());
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    await navigator();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        child: Column(
          children: [
            const Spacer(
              flex: 6,
            ),
            SvgPicture.asset(
              Assets.logoImageSvg,
              height: 0.1.sh,
              color: AppColors.primaryColor,
            ),
            50.verticalSpace,
            const CustomLoadingAnimation(),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
