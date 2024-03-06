import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/day_product_widget/day_product_circle_items/day_product_circle_items.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/lists_title/lists_title.dart';

import '../../../../../../constants/assets.dart';
import '../../../../../../constants/color.dart';
import '../banner_widget/riverpod/banner_widget_provider.dart';

class DayProduct extends ConsumerStatefulWidget {
  final List<String> imagePath;
  final int? borderEnable;
  const DayProduct({super.key,required this.imagePath,this.borderEnable});

  @override
  ConsumerState<DayProduct> createState() => _DayProductState();
}

class _DayProductState extends ConsumerState<DayProduct> {
  final CardSwiperController controller = CardSwiperController();

  // final cards = candidates.map(ExampleCard.new).toList();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(bannerWidgetProvider.notifier);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.sp),
      child: Column(
        children: [
          20.verticalSpace,
          const CategoryListsTitleWidget(timerShow: true,title: "Товар дня",),
          10.verticalSpace,
          SizedBox(
            height: 0.33.sh,
            width: 1.sw,
            child: CardSwiper(
              controller: controller,
onSwipe: (index,item,swipe){
notifier.selectedDayProduct(item ?? index);
   return  true;
},


              cardsCount: widget.imagePath.length,
              numberOfCardsDisplayed: 3,
              backCardOffset: const Offset(30, 0),
              padding:  const EdgeInsets.only(top: 12.0,bottom: 12,right: 12),
              cardBuilder: (
                context,
                index,
                horizontalThresholdPercentage,
                verticalThresholdPercentage,
              ) =>
                  Container(
                // padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1.0, 0),
                          spreadRadius: 1,
                          blurRadius: 30,
                          color: AppColors.greyColor5.withOpacity(0.4))
                    ]),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          5.verticalSpace,
                          Image.asset(
                            widget.imagePath[index],
                            height: 0.15.sh,
                            width: 1.sw,
                          ),
                          15.verticalSpace,
                          Text(
                            "Микроволновая печь соло Gorenje MO17E1W",
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp),
                          ),
                          10.verticalSpace,
                          Text(
                            "2 000 000 сум",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "1 750 000 сум",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 15,
                      child: SvgPicture.asset(Assets.xitSvg),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 15,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 4),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: SvgPicture.asset(
                          Assets.shoppingCartSvg,
                          height: 22,
                          width: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
           DayProductCircleItemsWidget(imagePath: widget.imagePath,swiperController: controller,),
        ],
      ),
    );
  }
}
