import 'package:stacked/stacked.dart' as stacked;
import 'package:auto_route/auto_route.dart';

class MainNavigationViewModel extends stacked.BaseViewModel {
  int _activeRouteIndex = 0;
  int get activeRouteIndex => _activeRouteIndex;

  void setActiveRouteIndex(int index, TabsRouter tabRouter) {
    _activeRouteIndex = index;
    rebuildUi();
    // if (index == 0) {

    // } else if (index == 1) {

    // } else if (index == 2) {

    // }
  }
}
