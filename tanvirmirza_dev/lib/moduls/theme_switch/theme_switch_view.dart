import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanvirmirza_dev/moduls/theme_switch/theme_contoller.dart';

class ThemeSwitchView extends StatelessWidget {
  ThemeSwitchView({super.key});

  final ThemeController _themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isDark = _themeController.themeMode.value == ThemeMode.dark;
      return IconButton(
        tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              RotationTransition(turns: animation, child: child),
          child: Icon(
            isDark ? Icons.wb_sunny : Icons.nightlight_round,
            key: ValueKey<bool>(isDark),
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        onPressed: _themeController.toggleTheme,
      );
    });
  }
}
