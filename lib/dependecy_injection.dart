import 'package:get_it/get_it.dart';
import 'package:test_task/routes/routes.dart';


import 'package:get_it/get_it.dart';

T inject<T extends Object>() {
  return GetIt.I.get<T>();
}



final GetIt getIt = GetIt.instance;

void setUpDependencies() {

  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

}

final appRouter = getIt.get<AppRouter>();