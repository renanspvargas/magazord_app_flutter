import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/core/exceptions/weather_exceptions.dart';
import 'package:magazord_app_flutter/app/core/ui/helpers/loader_mixin.dart';
import 'package:magazord_app_flutter/app/core/ui/helpers/messages_mixin.dart';
import 'package:magazord_app_flutter/app/models/weather/weather_details_model.dart';
import 'package:magazord_app_flutter/app/repositories/weather/weather_repo.dart';

class WeatherController extends GetxController with LoaderMixin, MessagesMixin {
  final WeatherRepo _repo;
  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  final _texFieldController = TextEditingController().obs;
  TextEditingController get texFieldController => _texFieldController.value;
  String get textFieldText => _texFieldController.value.text;

  final _weatherDetails = Rx<WeatherDetailsModel?>(null);
  WeatherDetailsModel? get weatherDetails => _weatherDetails.value;

  WeatherController({required WeatherRepo repo}) : _repo = repo;

  @override
  void onInit() {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
  }

  @override
  void onClose() {
    _texFieldController.value.dispose();
    super.onClose();
  }

  void onChangeTextField(String value) {
    _texFieldController.value.text = value;
  }

  void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  void getCurrentWeatherForLocation() async {
    if (textFieldText == '') return;
    _loading(true);
    try {
      WeatherDetailsModel details =
          await _repo.getWeatherDetailsForLocation(textFieldText);
      _weatherDetails.value = details;
      _loading(false);
    } on Exception catch (e) {
      _loading(false);

      if (e is WeatherBadresponseException) {
        _message.value = MessageModel(
          title: 'Erro com completar busca',
          message: e.message,
          type: MessageType.error,
        );
        return;
      }

      _message.value = MessageModel(
        title: 'Erro com completar busca',
        message:
            'Tivemos um problema em completar a pesquisa, favor tentar mais tarde.',
        type: MessageType.error,
      );
      return;
    }
  }
}
