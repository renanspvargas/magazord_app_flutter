import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './weather_controller.dart';

class WeatherPage extends GetView<WeatherController> {
    
    const WeatherPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('WeatherPage'),),
            body: Container(),
        );
    }
}