
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:test_task/app.dart';

import 'dependecy_injection.dart';
// import 'package:device_preview/device_preview.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpDependencies();
  runApp(
    ProviderScope(
      child:
      // DevicePreview(
      //     enabled: !kReleaseMode,
      //     builder: (context)  {
      //     return
            App()
        // ;
        // }
      // ),

    ),
  );
}
