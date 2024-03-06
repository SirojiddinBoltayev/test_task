import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task/constants/assets.dart';

import 'banner_widget_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());
  final pageController = PageController(
    viewportFraction: 0.75,
    initialPage: 0,
  );

  List<String> cardTitle = ["Готов к выдаче", "Как вам работа приложения?"];
  List<String> cardLabel = ["Заказ №10021122", "Нам важно ваше мнение"];
  List<String> cardSubTitle = ["Самовывоз до 29 марта", ""];
  List<String> cardButtonTitle = ["Забрать заказ", "Оценить"];
  List<String> cardIcons = [
    Assets.boxSvg,
    Assets.boxSvg,
  ];

  List<String> cardBannerImages = [
    Assets.banner1Png,
    Assets.banner2Png,
  ];

  List<String> dayProductCircleImages = [
    Assets.playstationPng,
    Assets.iphonePng,
    Assets.sofaPng,
  ];


  // void autoScrollBanner({Duration? duration}) async {
  //   await Future.delayed(duration ?? const Duration(seconds: 7));
  //   if (pageController.positions.isNotEmpty) {
  //     if (pageController.page!.toInt() + 1 == state.banners[0].events?.length) {
  //       await pageController.animateToPage(0,
  //           duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
  //     } else {
  //       await pageController.nextPage(
  //           duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  //     }
  //   }
  //   return autoScrollBanner();
  // }

  incrementPageIndex(int pageIndex) {
    state = state.copyWith(
      pageIndex: pageIndex,
    );
  }
  selectedDayProduct(int dayProductIndex) {
    state = state.copyWith(
      dayProductSelectedIndex: dayProductIndex,
    );
  }
}
