import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeSecondPageView extends StatelessWidget {
  const HomeSecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text("SECOND PAGE INSIDE HOME"),
      ),
    );
  }
}
