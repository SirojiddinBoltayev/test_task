

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';
import 'package:test_task/presentation/ui/pages/catalog/catalog_page.dart';
import 'package:test_task/presentation/ui/pages/favorite/favorite_page.dart';
import 'package:test_task/presentation/ui/pages/shopping/shopping_page.dart';

import '../../../../../../constants/assets.dart';
import '../../widgets/custom_navbar/nav_item_enum.dart';
import '../../../home/home.dart';
import '../../../profile/profile_page.dart';
import '../state/main_state.dart';

class MainNotifier extends StateNotifier<MainState>{
  MainNotifier() : super( const MainState());


  List<IndexedStackChild> list = [
    IndexedStackChild(child: const HomePage(), preload: false),
    IndexedStackChild(child: const CatalogPage(), preload: false),
    IndexedStackChild(child: const ShoppingPage(), preload: false),
    IndexedStackChild(child: const FavoritePage(), preload: false),
    IndexedStackChild(child: const ProfilePage(), preload: false),
  ];
  List<NavItemEnum> navItem = [
    NavItemEnum.home,
    NavItemEnum.catalog,
    NavItemEnum.order,
    NavItemEnum.favorite,
    NavItemEnum.profile,
  ];
  List<String> labels = [
    "Главная",
    "Каталог",
    "Корзина",
    "Избранное",
    "Профиль",

  ];

  List<GlobalKey<NavigatorState>> listKey =[
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<String> icons =[
    Assets.homeSvg,
    Assets.catalogSearchSvg,
    Assets.shoppingCartOutlinedSvg,
    Assets.favoriteSvg,
    Assets.profileSvg,
  ];






  void incrementPageIndex(item){
    state = state.copyWith(indexPage: item);
  }

}

