import 'package:fitness/constants/const.dart';
import 'package:fitness/controller/fitness_controller.dart';
import 'package:fitness/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness/config/screen_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          width: AppScreenConfig.screenWidth,
          height: AppScreenConfig.screenHeight,
          color: Get.theme.primaryColor,
          child: _showHomeScreenData(context),
        ),
      ),
    );
  }

  Widget _showHomeScreenData(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi!",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 30.0),
        const ShowCards(),
      ],
    );
  }
}

class ShowCards extends StatefulWidget {
  const ShowCards({Key? key}) : super(key: key);

  @override
  _ShowCardsState createState() => _ShowCardsState();
}

class _ShowCardsState extends State<ShowCards> {
  final FitnessController controller = Get.find();

  @override
  void initState() {
    controller.fetchStepData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: _showAppCards(context));
  }

  Widget _showAppCards(BuildContext context) {
    return GetBuilder<FitnessController>(
      init: controller,
      builder: controllerBuilder,
    );
  }

  Widget controllerBuilder(FitnessController cont) {
    if (cont.appState == AppState.authNotGranted) {
      return const Center(child: Text("Please provide authentication"));
    } else if (cont.appState == AppState.dataAdded) {
      return _showSteps(cont);
    } else if (cont.appState == AppState.unexpectedError) {
      return const Center(child: Text("Unexpected Error"));
    } else if (cont.appState == AppState.dataNotFetched) {
      return const Center(child: Text("Data  Not Fetched"));
    } else {
      return const Center(child: AppCircularProgressLoader());
    }
  }

  Widget _showSteps(FitnessController cont) {
    return Column(
      children: [
        if (cont.data!.containsKey("STEPS")) ...[
          _showAppCard(
            "Steps:  ${cont.data!["STEPS"].toString()}",
            "assets/foot_steps.svg",
            cont.data!["STEPS"] ?? 0,
            15000,
          ),
        ],
        const SizedBox(height: 20.0),
        _showAppCard(
          "Calories Burned:  ${cont.data!["ACTIVE_ENERGY_BURNED"]?.toInt()}",
          "assets/kcal.svg",
          cont.data!["ACTIVE_ENERGY_BURNED"]?.toInt(),
          1000,
        ),
      ],
    );
  }

  Widget _showAppCard(
      String headerText, String assetName, int value, int endValue) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(width: 0.2, color: Colors.grey),
      ),
      height: 180,
      padding: const EdgeInsets.all(15.0),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerText,
                  style: Get.theme.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      LinearPercentIndicator(
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2000,
                        percent: value / endValue,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Theme.of(context).iconTheme.color,
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0", style: Theme.of(context).textTheme.caption),
                          Text("Goal: $endValue",
                              style: Theme.of(context).textTheme.caption),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetName,
                  color: Theme.of(context).iconTheme.color,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
