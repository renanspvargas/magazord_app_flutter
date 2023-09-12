class WeatherDetailsModel {
  final WeatherDetailsLocationModel location;
  final WeatherDetailsCurrentModel current;

  WeatherDetailsModel({
    required this.location,
    required this.current,
  });

  factory WeatherDetailsModel.fromMap(Map<String, dynamic> map) {
    return WeatherDetailsModel(
      location: WeatherDetailsLocationModel.fromMap(
          map['location'] as Map<String, dynamic>),
      current: WeatherDetailsCurrentModel.fromMap(
          map['current'] as Map<String, dynamic>),
    );
  }
}

class WeatherDetailsLocationModel {
  final String name;
  final String country;

  WeatherDetailsLocationModel({
    required this.name,
    required this.country,
  });

  factory WeatherDetailsLocationModel.fromMap(Map<String, dynamic> map) {
    return WeatherDetailsLocationModel(
      name: map['name'] as String,
      country: map['country'] as String,
    );
  }
}

class WeatherDetailsCurrentModel {
  final double tempC;
  final WeatherDetailsCurrentConditionModel condition;

  WeatherDetailsCurrentModel({
    required this.tempC,
    required this.condition,
  });

  int get tempCInt => tempC.toInt();

  factory WeatherDetailsCurrentModel.fromMap(Map<String, dynamic> map) {
    return WeatherDetailsCurrentModel(
      tempC: map['temp_c'] as double,
      condition: WeatherDetailsCurrentConditionModel.fromMap(
          map['condition'] as Map<String, dynamic>),
    );
  }
}

class WeatherDetailsCurrentConditionModel {
  final String text;

  WeatherDetailsCurrentConditionModel({
    required this.text,
  });

  factory WeatherDetailsCurrentConditionModel.fromMap(
      Map<String, dynamic> map) {
    return WeatherDetailsCurrentConditionModel(
      text: map['text'] as String,
    );
  }
}
