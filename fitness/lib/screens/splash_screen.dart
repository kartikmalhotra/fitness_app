import 'package:fitness/config/screen_config.dart';
import 'package:fitness/config/theme/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Initialize AppScreen Config
    AppScreenConfig.initializeScreenConfig(context);

    return Container(
      width: AppScreenConfig.screenWidth,
      height: AppScreenConfig.screenHeight,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(child: ScreenAnimation(context: context)),
    );
  }
}

class ScreenAnimation extends StatefulWidget {
  final BuildContext context;
  const ScreenAnimation({Key? key, required this.context}) : super(key: key);

  @override
  _ScreenAnimationState createState() => _ScreenAnimationState();
}

class _ScreenAnimationState extends State<ScreenAnimation>
    with TickerProviderStateMixin {
  Widget _widget = Container();

  @override
  void initState() {
    _animateSplashScreen(widget.context);
    super.initState();
  }

  Future<void> _animateSplashScreen(BuildContext context) async {
    await Future.delayed(
        const Duration(milliseconds: AppAnimationDuration.short));
    setState(() {
      _widget = SvgPicture.asset(
        "assets/boozin_logo_start.svg",
        color: Colors.orangeAccent,
      );
    });
    await Future.delayed(
        const Duration(milliseconds: AppAnimationDuration.xshort));
    setState(() {
      _widget = SvgPicture.asset(
        Get.isDarkMode
            ? "assets/boozin_logo_dark.svg"
            : "assets/boozin_logo_light.svg",
      );
    });
    await Future.delayed(
        const Duration(milliseconds: AppAnimationDuration.xshort));
    setState(() {
      _widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Get.isDarkMode
                ? "assets/boozin_logo_dark.svg"
                : "assets/boozin_logo_light.svg",
          ),
          const SizedBox(height: 10.0),
          Text("Fitness", style: Get.theme.textTheme.subtitle1)
        ],
      );
    });
    await Future.delayed(
        const Duration(milliseconds: AppAnimationDuration.xshort));
    Get.offNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
