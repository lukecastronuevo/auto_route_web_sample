import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_web_sample/views/account_navigation/account_navigation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class AccountNavigationView extends StatelessWidget {
  const AccountNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountNavigationViewModel>.reactive(
      viewModelBuilder: () => AccountNavigationViewModel(),
      builder: (context, viewModel, child) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 25, bottom: 20),
              width: double.maxFinite,
              child: const Text(
                'ACCOUNT NAVIGATION',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(child: AutoRouter(key: viewModel.routerKey))
          ],
        ),
      ),
    );
  }
}
