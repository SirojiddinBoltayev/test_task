import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constants/color.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/banner_widget/ad_banner_widget.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/lists_title/lists_title.dart';
import 'package:test_task/presentation/ui/widgets/custom_button/customButton.dart';

import '../../../../../../constants/assets.dart';

class ProjectBlog extends StatefulWidget {
  const ProjectBlog({super.key});

  @override
  State<ProjectBlog> createState() => _ProjectBlogState();
}

class _ProjectBlogState extends State<ProjectBlog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.025.sh.verticalSpace,
        CategoryListsTitleWidget(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.sp,
            ),
            child: Row(
              children: [
                Text(
                  "ORZU",
                  style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp),
                ),
                Text(
                  "BLOG",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp),
                ),
              ],
            ),
          ),
        ),
        0.004.sh.verticalSpace,
        BannerWidget(
          length: 3,
          imagePath: [
            Assets.blogBannerPng,
            Assets.blogBannerPng,
            Assets.blogBannerPng,
          ],
          titleChild: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
                child: Text(
                  "Статья",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(),
            SizedBox(),
          ],
          decorationWidget: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.black.withOpacity(0.1),
                    AppColors.black.withOpacity(0.3),
                    AppColors.black.withOpacity(01)
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.0.sp, vertical: 12.sp),
                  child: Text(
                    "Топ-20 лучших недорогих планшетов на сегодняшний день",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                        fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
          child: CustomButton(
            child: Text(
              "Читать все",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  fontSize: 14.sp),
            ),
          ),
        ),
        // 0.1.sh.verticalSpace,
        SizedBox(
          height: 0.3.sh,
          child: Stack(
alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 0.17.sh
                ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(-1.0, 15),
                          spreadRadius: 1,
                          blurRadius: 30,
                          color: AppColors.greyColor5.withOpacity(0.6))
                    ]),
                margin: EdgeInsets.symmetric(horizontal: 12.sp),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 0.43.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "У нас всё!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.green,
                                  fontSize: 14.sp),
                            ),
                            5.verticalSpace,
                            Text(
                              "Хватит листать, переходи в каталог.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  fontSize: 14.sp),
                            ),
                            5.verticalSpace,
                            CustomButton(
                              padding: EdgeInsets.zero,
                              borderRadius: BorderRadius.circular(8),
                              height: 0.04.sh,
                              child: Text(
                                "Каталог",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white,
                                    fontSize: 14.sp),
                              ),
                            ),
                            5.verticalSpace,
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                  bottom: 0,
                  height: 0.2.sh,
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Image.asset(
                  Assets.catalogBannerPng,
                  height: 0.18.sh,
                ),
              ))
            ],
          ),
        ),
        10.verticalSpace
      ],
    );
  }
}
