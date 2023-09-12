import 'package:get/route_manager.dart';
import 'package:magazord_app_flutter/app/modules/home/home_bindings.dart';
import 'package:magazord_app_flutter/app/modules/home/home_page.dart';

sealed class HomeRouter {
  static const routeName = '/home';

  static final routers = <GetPage>[
    GetPage(
      name: routeName,
      binding: HomeBindings(),
      page: () => const HomePage(),
    )
  ];
}
