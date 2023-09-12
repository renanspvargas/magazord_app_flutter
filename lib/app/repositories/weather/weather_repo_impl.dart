import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:magazord_app_flutter/app/core/exceptions/weather_exceptions.dart';
import 'package:magazord_app_flutter/app/core/rest_client/rest_client.dart';
import 'package:magazord_app_flutter/app/models/weather/weather_details_model.dart';
import 'package:magazord_app_flutter/app/repositories/weather/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  final RestClient _restClient;
  final _key = '634717cf5a50498f851120209231009';

  WeatherRepoImpl({required RestClient restClient}) : _restClient = restClient;

  @override
  Future<WeatherDetailsModel> getWeatherDetailsForLocation(String value) async {
    try {
      final uri = Uri(
        scheme: 'https',
        host: 'api.weatherapi.com',
        path: 'v1/current.json',
        queryParameters: {'key': _key, 'q': value},
      );

      final response = await _restClient.execute().getUri(uri);
      return WeatherDetailsModel.fromMap(response.data);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Problema com o token de autenticação', error: e, stackTrace: s);
        throw WeatherUnautorizedException();
      }
      if (e.response?.statusCode == 400) {
        log('Nenhuma localização encontrada com os dados forncidos',
            error: e, stackTrace: s);
        throw WeatherBadresponseException(
            message: 'Nenhuma localização encontrada com os dados forncidos');
      }
      log('Erro ao buscar dados', error: e, stackTrace: s);
      throw WeatherRepoException(message: 'Erro ao buscar dados');
    }
  }
}
