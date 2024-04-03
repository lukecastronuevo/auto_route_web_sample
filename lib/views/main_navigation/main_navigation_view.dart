import 'package:auto_route/auto_route.dart';
import 'package:auto_route_web_sample/router/router.gr.dart';
import 'package:auto_route_web_sample/views/main_navigation/main_navigation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class MainNavigationView extends StatelessWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainNavigationViewModel>.reactive(
      viewModelBuilder: () => MainNavigationViewModel(),
      builder: (context, viewModel, child) => AutoTabsRouter(
        routes: const [
          HomeNavigationView(),
          StoreNavigationView(),
          AccountNavigationView(),
        ],
        homeIndex: viewModel.activeRouteIndex,
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                    child: ListView(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            tabsRouter.setActiveIndex(0);
                                            viewModel.setActiveRouteIndex(0, tabsRouter);
                                          },
                                          child: AnimatedContainer(
                                            duration: const Duration(milliseconds: 200),
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color: viewModel.activeRouteIndex == 0 ? Colors.green : Colors.grey.shade300,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              "Home",
                                              style: TextStyle(
                                                color: viewModel.activeRouteIndex == 0 ? Colors.white : Colors.black,
                                                fontSize: 15,
                                                fontWeight: viewModel.activeRouteIndex == 0 ? FontWeight.w600 : FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            tabsRouter.setActiveIndex(1);
                                            viewModel.setActiveRouteIndex(1, tabsRouter);
                                          },
                                          child: AnimatedContainer(
                                            duration: const Duration(milliseconds: 200),
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color: viewModel.activeRouteIndex == 1 ? Colors.green : Colors.grey.shade300,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              "Store",
                                              style: TextStyle(
                                                color: viewModel.activeRouteIndex == 1 ? Colors.white : Colors.black,
                                                fontSize: 15,
                                                fontWeight: viewModel.activeRouteIndex == 1 ? FontWeight.w600 : FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            tabsRouter.setActiveIndex(2);
                                            viewModel.setActiveRouteIndex(2, tabsRouter);
                                          },
                                          child: AnimatedContainer(
                                            duration: const Duration(milliseconds: 200),
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color: viewModel.activeRouteIndex == 2 ? Colors.green : Colors.grey.shade300,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              "Account",
                                              style: TextStyle(
                                                color: viewModel.activeRouteIndex == 2 ? Colors.white : Colors.black,
                                                fontSize: 15,
                                                fontWeight: viewModel.activeRouteIndex == 2 ? FontWeight.w600 : FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: child),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
