
import 'package:auto_route/auto_route.dart' ;

import '../presentation/ui/pages/home/home.dart';
import '../presentation/ui/pages/main/main_page.dart';

import '../presentation/ui/pages/splash/splash.dart';




part 'routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter{


  @override
  List<AutoRoute> get routes => [

    CupertinoRoute( page: SplashRoute.page,initial: true,path: "/"),

    CupertinoRoute( page: HomeRoute.page,path: "/home"),
    CupertinoRoute( page: MainRoute.page,path: "/main"),

  ];
}