sealed class WeatherException implements Exception {}

class WeatherRepoException implements WeatherException {
  final String message;

  WeatherRepoException({required this.message});
}

class WeatherUnautorizedException implements WeatherException {}

class WeatherBadresponseException implements WeatherException {
  final String message;

  WeatherBadresponseException({required this.message});
}
