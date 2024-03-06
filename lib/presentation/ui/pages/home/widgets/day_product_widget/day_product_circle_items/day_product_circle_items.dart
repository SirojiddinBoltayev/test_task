import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constants/color.dart';

import '../../banner_widget/riverpod/banner_widget_provider.dart';


class DayProductCircleItemsWidget extends ConsumerStatefulWidget {
  final List<String> imagePath;
  final bool? borderEnable;
  final CardSwiperController? swiperController;

  const DayProductCircleItemsWidget( {super.key,this.swiperController,required this.imagePath,this.borderEnable});

  @override
  ConsumerState<DayProductCircleItemsWidget> createState() =>
      _DayProductCircleItemsWidgetState();
}

class _DayProductCircleItemsWidgetState
    extends ConsumerState<DayProductCircleItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(bannerWidgetProvider.notifier);
    final state = ref.watch(bannerWidgetProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => InkWell(
            onTap: (){
              notifier.selectedDayProduct(index);
              widget.swiperController?.swipe(CardSwiperDirection.right);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.sp),
              width: 0.045.sh,
              height: 0.045.sh,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: (state.dayProductSelectedIndex == index ) ? AppColors.primaryColor : AppColors.grey.withOpacity(0.5),
                  )),
              child: Padding(
                padding: EdgeInsets.all(5.sp),
                child: Image.asset(
                  widget.imagePath[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
