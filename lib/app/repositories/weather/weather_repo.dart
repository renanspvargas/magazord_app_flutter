import 'package:magazord_app_flutter/app/models/weather/weather_details_model.dart';

abstract interface class WeatherRepo {
  Future<WeatherDetailsModel> getWeatherDetailsForLocation(
    String value,
  );
}
