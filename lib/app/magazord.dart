import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:magazord_app_flutter/app/core/ui/theme/app_theme.dart';
import 'package:magazord_app_flutter/app/magazord_bindings.dart';
import 'package:magazord_app_flutter/app/modules/home/home_router.dart';

class Magazord extends StatelessWidget {
  const Magazord({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Magazord App',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      initialBinding: MagazordBindings(),
      initialRoute: HomeRouter.routeName,
      getPages: [
        ...HomeRouter.routers,
      ],
    );
  }
}
