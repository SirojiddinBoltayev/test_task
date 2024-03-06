
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dependecy_injection.dart';


class App extends StatelessWidget {
   App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
   
      builder: (_,child) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          // onGenerateRoute: ,
          // initialRoute: ,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
          // home:  child,
        );

      },
      // child: const Splash( )
    );
  }
}
