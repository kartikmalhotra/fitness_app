import 'package:fitness/config/theme/dark_theme.dart';
import 'package:fitness/config/theme/light_theme.dart';
import 'package:fitness/controller/fitness_controller.dart';
import 'package:fitness/screens/home_screen.dart';
import 'package:fitness/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FitnessApp extends StatefulWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  _FitnessAppState createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> with WidgetsBindingObserver {
  Brightness? _brightness;

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    _brightness = WidgetsBinding.instance!.window.platformBrightness;
    Get.changeTheme(_brightness == Brightness.light
        ? lightThemeData['themeData'] as ThemeData
        : darkThemeData['themeData'] as ThemeData);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    _brightness = WidgetsBinding.instance!.window.platformBrightness;
    setState(() {
      Get.changeTheme(_brightness == Brightness.light
          ? lightThemeData['themeData'] as ThemeData
          : darkThemeData['themeData'] as ThemeData);
    });
  }

  @override
  Widget build(BuildContext context) {
    Get.put(FitnessController());

    return GetMaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData['themeData'] as ThemeData,
      darkTheme: darkThemeData['themeData'] as ThemeData,
      getPages: [
        GetPage(name: "/home", page: () => const HomeScreen()),
        GetPage(name: "/", page: () => const SplashScreen()),
      ],
    );
  }
}
