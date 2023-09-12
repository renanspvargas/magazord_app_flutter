import 'package:get/get.dart';
import './weather_controller.dart';

class WeatherBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(WeatherController());
    }
}