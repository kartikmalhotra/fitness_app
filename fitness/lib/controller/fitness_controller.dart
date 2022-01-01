import 'package:fitness/constants/const.dart';
import 'package:get/get.dart';
import 'package:health/health.dart';

class FitnessController extends GetxController {
  final Map<String, dynamic> _dataFetched = {};

  // create a HealthFactory for use in the app
  final HealthFactory health = HealthFactory();
  AppState appState = AppState.fetchingData;

  Map<String, dynamic>? get data {
    return _dataFetched;
  }

  /// Fetch steps from the health plugin and show them in the app.
  Future fetchStepData() async {
    List<HealthDataPoint>? healthDataPoint;

    // get steps for today (i.e., since midnight)
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    bool requested = await health.requestAuthorization([
      HealthDataType.STEPS,
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ]);

    if (requested) {
      try {
        healthDataPoint = await health.getHealthDataFromTypes(midnight, now, [
          HealthDataType.STEPS,
          HealthDataType.ACTIVE_ENERGY_BURNED,
        ]);

        if (healthDataPoint.isNotEmpty) {
          for (int i = 0; i < healthDataPoint.length; i++) {
            _dataFetched[healthDataPoint[i].typeString] =
                healthDataPoint[i].value;
            if (healthDataPoint[i].typeString == "ACTIVE_ENERGY_BURNED") {
              _dataFetched[healthDataPoint[i].typeString] =
                  _dataFetched[healthDataPoint[i].typeString] / 1000;
            }
          }
          appState = AppState.dataAdded;
        } else {
          appState = AppState.noData;
        }
      } catch (error) {
        appState = AppState.unexpectedError;
      }
    } else {
      appState = AppState.dataNotFetched;
    }
    update();
  }
}
