import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountSecondPageView extends StatelessWidget {
  const AccountSecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Text("SECOND PAGE INSIDE ACCOUNT"),
      ),
    );
  }
}
