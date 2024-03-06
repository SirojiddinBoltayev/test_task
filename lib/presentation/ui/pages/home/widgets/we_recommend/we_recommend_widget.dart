import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/constants/color.dart';
import 'package:test_task/presentation/ui/widgets/custom_button/customButton.dart';

import '../../../../../../constants/assets.dart';
import '../lists_title/lists_title.dart';

class WeRecommendWidget extends StatefulWidget {
  const WeRecommendWidget({super.key});

  @override
  State<WeRecommendWidget> createState() => _WeRecommendWidgetState();
}

class _WeRecommendWidgetState extends State<WeRecommendWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
          child: const CategoryListsTitleWidget(
            timerShow: false,
            title: "Рекомендуем вам",
          ),
        ),
        10.verticalSpace,
        DefaultTabController(
          length: tabBarTitles.length,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: AppColors.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle: TextStyle(color: AppColors.grey),
                  unselectedLabelColor: AppColors.grey,
                  labelColor: AppColors.primaryColor,
                  isScrollable: true,
                  tabs: List.generate(
                      tabBarTitles.length,
                      (index) => Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Column(
                              children: [
                                Text(
                                  tabBarTitles[index],
                                  style: TextStyle(
                                      // color: AppColors.primaryColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ))),
              SizedBox(
                  height: 0.56.sh,
                  child: TabBarView(
                      dragStartBehavior: DragStartBehavior.down,
                      viewportFraction: 0.85,
                      children: List.generate(
                        tabBarTitles.length,
                        (tanIndex) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.sp),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(1.0, 0),
                                        spreadRadius: 1,
                                        blurRadius: 30,
                                        color: AppColors.greyColor5
                                            .withOpacity(0.4))
                                  ]),
                              child: SizedBox(
                                // color: AppColors.ap,
                                height: 0.46.sh,
                                child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    itemCount: tabItemListImages.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, item) {
                                      return InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 0.007.sh),
                                          width: 1.sw,
                                          height: 0.14.sh,
                                          child: Stack(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    tabItemListImages[item],
                                                    width: 0.25.sw,
                                                    height: 0.2.sw,
                                                  ),
                                                  0.01.sw.horizontalSpace,
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                          width: 0.5.sw,
                                                          child: Text(
                                                            tabItemListTitle[
                                                                item],
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    14.sp),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 3,
                                                          )),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                              width: 0.5.sw,
                                                              child: Text(
                                                                tabItemListDiscountSalary[
                                                                    item],
                                                                style: TextStyle(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .lineThrough,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,fontSize: 13.sp),

                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 3,
                                                              )),
                                                          SizedBox(
                                                              width: 0.5.sw,
                                                              child: Text(
                                                                "1 750 000 сум",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    color: AppColors
                                                                        .primaryColor),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 3,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                bottom: 5,
                                                right: 8,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15.sp,
                                                      vertical: 4),
                                                  decoration: BoxDecoration(
                                                      color: AppColors
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
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
                                      );
                                    }),
                              ),
                            ),
                            4.verticalSpace,
                            Padding(
                              padding: EdgeInsets.only(right: 14.0.sp),
                              child: CustomButton(
                                  child: Text(
                                "Смотреть все 15",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp),
                              )),
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ],
    );
  }

  List<String> tabBarTitles = ["Новинки", "Популярное", "Скидки + Рассрочка"];
  List<String> tabItemListImages = [
    Assets.cleanMachinePng,
    Assets.playstationPng,
    Assets.freezerPng,
  ];
  List<String> tabItemListTitle = [
    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
    "Игровая приставка Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
  ];

  List<String> tabItemListDiscountSalary = [
    "2 000 000 сум",
    "",
    "",
  ];
}
