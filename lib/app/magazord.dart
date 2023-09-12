import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:magazord_app_flutter/app/magazord_bindings.dart';

class Magazord extends StatelessWidget {
  const Magazord({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Magazord App',
      initialBinding: MagazordBindings(),
    );
  }
}
