import 'package:auto_route_web_sample/locator.dart';
import 'package:auto_route_web_sample/router/router.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = locator<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'AUTO ROUTE WEB SAMPLE',
      routerConfig: appRouter.config(),
      theme: Theme.of(context).copyWith(
        buttonTheme: const ButtonThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
      ),
    );
  }
}
