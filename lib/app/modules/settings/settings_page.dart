import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
    
    const SettingsPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('SettingsPage'),),
            body: Container(),
        );
    }
}