
import 'package:get_it/get_it.dart';
import 'package:lesson_mobx/pages/detail/detail_store.dart';
import 'package:lesson_mobx/pages/home/home_store.dart';
import '../pages/update/update_store.dart';

final locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => DetailStore());
  locator.registerLazySingleton(() => HomeStore());
  locator.registerLazySingleton(() => UpdateStore());

}