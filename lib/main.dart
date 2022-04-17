import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';
import 'package:personal_dev_portfolio/core/app_bindings.dart';
import 'package:url_strategy/url_strategy.dart';
import 'screens/home/home_screen.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  AppBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (themeC) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Portfolio Website',
          theme: themeC.getTheme(context),
          home: HomeScreen(),
        );
      },
    );
  }
}
