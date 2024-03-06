import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../../../../../constants/color.dart';

class CategoryListsTitleWidget extends StatelessWidget {
  final bool? timerShow;
  final Widget? child;
  final String? title;
  const CategoryListsTitleWidget({super.key, this.child, this.title, this.timerShow});

  @override
  Widget build(BuildContext context) {
    return           Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        child ?? const SizedBox(),
        (title?.isNotEmpty ?? false) ? Text(
          title ?? "",
          style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp),
        ) : const SizedBox(),
        const Spacer(),
       (timerShow ?? false) ? SlideCountdownSeparated(
          streamDuration: StreamDuration(
            config: const StreamDurationConfig(
                autoPlay: true,
                countDownConfig:
                CountDownConfig(duration: Duration(days: 1))),
          ),
          // duration: Duration(minutes: 2),
          decoration: BoxDecoration(
            color: AppColors.secondaryPrimaryColor.withOpacity(0.0),
          ),
          style: const TextStyle(color: AppColors.grey, fontSize: 18),
        ) : 0.verticalSpace,
      ],
    )

    ;
  }
}
