import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Troque o tema da aplicação'),
              ElevatedButton(
                onPressed: () => controller.toggleTheme(),
                child: const Text('Toggle Theme'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
