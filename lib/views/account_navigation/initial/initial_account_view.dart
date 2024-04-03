import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_web_sample/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitialAccountView extends StatelessWidget {
  const InitialAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "INITIAL PAGE INSIDE ACCOUNT",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              AutoRouter.of(context).push(const AccountSecondPageView());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              padding: const EdgeInsets.all(20.0),
            ),
            child: const Text("Go to second page"),
          ),
        ],
      ),
    );
  }
}
