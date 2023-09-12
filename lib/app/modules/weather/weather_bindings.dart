import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/repositories/weather/weather_repo.dart';
import 'package:magazord_app_flutter/app/repositories/weather/weather_repo_impl.dart';
import './weather_controller.dart';

class WeatherBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<WeatherRepo>(WeatherRepoImpl(restClient: Get.find()));
    Get.put(WeatherController(repo: Get.find()));
  }
}
