import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './weather_controller.dart';

class WeatherPage extends GetView<WeatherController> {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.dismissKeyboard(context),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Pesquise por cidade',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Obx(() {
                return TextField(
                  onChanged: controller.onChangeTextField,
                  controller: controller.texFieldController,
                  onSubmitted: (value) =>
                      controller.getCurrentWeatherForLocation(),
                );
              }),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  controller.dismissKeyboard(context);
                  controller.getCurrentWeatherForLocation();
                },
                child: const Text('Buscar dados de clima'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),
              Obx(() {
                final details = controller.weatherDetails;
                if (details != null) {
                  return Column(
                    children: [
                      Text(
                        details.location.name,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(details.location.country),
                      const SizedBox(height: 15),
                      Text(
                        'Temperature: ${details.current.tempCInt}°C',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text('Condition: ${details.current.condition.text}')
                    ],
                  );
                }
                return Container();
              })
            ],
          ),
        ),
      ),
    );
  }
}
