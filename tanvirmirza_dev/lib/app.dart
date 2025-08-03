import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanvirmirza_dev/core/themes/app_dark_theme.dart';
import 'package:tanvirmirza_dev/core/themes/app_light_theme.dart';
import 'package:tanvirmirza_dev/moduls/theme_switch/theme_contoller.dart';
import 'package:tanvirmirza_dev/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Obx(() => MaterialApp.router(
      title: 'Mirza Tanvir Devfolio',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeController.themeMode.value,
      routerConfig: AppRouter.router,
    ));
  }
}