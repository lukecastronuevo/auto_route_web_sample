import 'package:auto_route_web_sample/router/router.dart';
import 'package:stacked/stacked_annotations.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => AppRouter());
}
