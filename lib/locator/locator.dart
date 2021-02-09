import 'package:get_it/get_it.dart';
import 'package:the_academy/service/navigator_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
