import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/color.dart';
import '../../riverpod/provider/main_provider.dart';

class CustomNavBar extends ConsumerWidget {
  const CustomNavBar({
    super.key,
  });

  // List<String> labels = [
  //   "navbar.home".tr(),
  //   "navbar.catalog".tr(),
  //   "navbar.shopping_cart".tr(),
  //   "navbar.profile".tr(),
  //
  // ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(mainProvider.notifier);
    final state = ref.watch(mainProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: AppColors.navBarBackground,
          width: double.infinity,
          height: 50.h,
          child: Row(
            children: List.generate(
              notifier.navItem.length,
              (index) => Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      color: AppColors.navBarBackground,
                      child: Ink(
                        height: 25.h,
                        width: 55.w,

                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: SvgPicture.asset(
                              notifier.icons[index],
                              color: state.indexPage != index
                                  ? AppColors.grey
                                  : AppColors.primaryColor,
                            ),
                          ),
                          onTap: () {
                            notifier.incrementPageIndex(index);
                          },
                        ),
                      ),
                    ),
                   Text(
                        notifier.labels[index],
                        style:  TextStyle(
                            fontWeight: FontWeight.w600,
                            color: state.indexPage == index ? AppColors.primaryColor : AppColors.grey),
                      ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
