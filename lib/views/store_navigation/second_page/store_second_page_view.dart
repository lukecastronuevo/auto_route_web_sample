import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StoreSecondPageView extends StatelessWidget {
  const StoreSecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text("SECOND PAGE INSIDE STORE"),
      ),
    );
  }
}
