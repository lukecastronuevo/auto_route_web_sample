import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      path: "/",
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: MainNavigationView.page,
      initial: true,
      children: [
        CustomRoute(
          path: "home",
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: HomeNavigationView.page,
          children: [
            CustomRoute(
              path: "",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: InitialHomeView.page,
              initial: true,
            ),
            CustomRoute(
              path: "second-page",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: HomeSecondPageView.page,
            ),
          ],
        ),
        CustomRoute(
          path: "store",
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: StoreNavigationView.page,
          children: [
            CustomRoute(
              path: "",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: InitialStoreView.page,
              initial: true,
            ),
            CustomRoute(
              path: "second-page",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: StoreSecondPageView.page,
            ),
          ],
        ),
        CustomRoute(
          path: "account",
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: AccountNavigationView.page,
          children: [
            CustomRoute(
              path: "",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: InitialAccountView.page,
              initial: true,
            ),
            CustomRoute(
              path: "second-page",
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: AccountSecondPageView.page,
            ),
          ],
        ),
      ],
    ),
  ];
}
