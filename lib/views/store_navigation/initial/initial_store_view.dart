import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_web_sample/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitialStoreView extends StatelessWidget {
  const InitialStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "INITIAL PAGE INSIDE STORE",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              AutoRouter.of(context).push(const StoreSecondPageView());
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
