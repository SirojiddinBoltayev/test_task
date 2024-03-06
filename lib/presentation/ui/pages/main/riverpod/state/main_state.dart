



import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../widgets/custom_navbar/nav_item_enum.dart';


part 'main_state.freezed.dart';
@freezed
class MainState with _$MainState{
  const factory MainState({
    @Default(0) int indexPage,
    @Default("") String lang,
    @Default([
      NavItemEnum.home,
      NavItemEnum.catalog,
      NavItemEnum.order,
      NavItemEnum.profile,
    ]) List<NavItemEnum> navItem,
    @Default([]) List<GlobalKey<NavigatorState>> listKey,
    @Default([]) List<String> icons,

}) = _MainState;
  const MainState._();
}