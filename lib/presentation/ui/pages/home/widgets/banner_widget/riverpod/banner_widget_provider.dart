


import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'banner_widget_notifier.dart';
import 'banner_widget_state.dart';

final bannerWidgetProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>((ref) => HomeNotifier());