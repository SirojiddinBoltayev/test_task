import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/constants/color.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/banner_widget/ad_banner_widget.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/banner_widget/riverpod/banner_widget_provider.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/blog/project_blog.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/day_product_widget/day_product_widget.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/we_recommend/we_recommend_widget.dart';
import 'package:test_task/presentation/ui/widgets/custom_button/customButton.dart';
import 'package:test_task/presentation/ui/widgets/custom_text_field/custom_text_field.dart';

import '../../../../constants/assets.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  ConsumerState<HomePage> createState() => _ConsumerHomePageState();
}

class _ConsumerHomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(bannerWidgetProvider.notifier);
    final state = ref.watch(bannerWidgetProvider);
    super.build(context);
    return Scaffold(
      // backgroundColor: AppColors.secondaryPrimaryColor,
      body: Stack(
        children: [
          Container(
            color: AppColors.secondaryPrimaryColor,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.profilePersonSvg),
                          8.w.horizontalSpace,
                          Text(
                            "Здравствуйте, ",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Дониёр",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                BannerWidget(
                  length: notifier.cardTitle.length,
                  title: notifier.cardTitle,
                  subTitle: notifier.cardSubTitle,
                  buttonTitle: notifier.cardButtonTitle,
                  label: notifier.cardLabel,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.69,
              minChildSize: 0.69,
              maxChildSize: 0.96,
              snap: true,
              expand: true,
              snapSizes:  const [0.7,],
              builder: (BuildContext context, scrollController) {
                return ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        )),
                    child: CustomScrollView(
                      controller: scrollController,
                      // physics: const ClampingScrollPhysics(),
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0.sp),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      borderRadius: 8,
                                      borderColor: AppColors.transparent,
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.sp),
                                        child: SvgPicture.asset(
                                          Assets.searchSvg,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      hintText: "Поиск товаров",
                                    ),
                                  ],
                                ),
                              ),
                              BannerWidget(
                                imagePath: notifier.cardBannerImages,
                                length: notifier.cardBannerImages.length,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0.sp),
                                child: CustomButton(
                                  child: Text(
                                    "Все акции",
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp),
                                  ),
                                ),
                              ),
                              DayProduct(
                                imagePath: notifier.dayProductCircleImages,
                              ),
                              12.h.verticalSpace,
                              const WeRecommendWidget(),
                              const ProjectBlog(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),

      // const  BannerWidget(),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
