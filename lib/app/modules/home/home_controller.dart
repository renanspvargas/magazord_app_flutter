import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/modules/products_list/products_list_bindings.dart';
import 'package:magazord_app_flutter/app/modules/products_list/products_list_page.dart';
import 'package:magazord_app_flutter/app/modules/products_list/products_list_router.dart';
import 'package:magazord_app_flutter/app/modules/settings/settings_bindings.dart';
import 'package:magazord_app_flutter/app/modules/settings/settings_page.dart';
import 'package:magazord_app_flutter/app/modules/settings/settings_router.dart';
import 'package:magazord_app_flutter/app/modules/todo_list/todo_list_bindings.dart';
import 'package:magazord_app_flutter/app/modules/todo_list/todo_list_page.dart';
import 'package:magazord_app_flutter/app/modules/todo_list/todo_list_router.dart';
import 'package:magazord_app_flutter/app/modules/weather/weather_bindings.dart';
import 'package:magazord_app_flutter/app/modules/weather/weather_page.dart';
import 'package:magazord_app_flutter/app/modules/weather/weather_router.dart';

class HomeController extends GetxController {
  static const navigatorKey = 1;

  final _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  final _tabs = [
    TodoListRouter.routeName,
    WeatherRouter.routeName,
    ProductsListRouter.routeName,
    SettingsRouter.routeName,
  ];

  set tabIndex(int index) {
    if (index == _tabIndex.value) return;

    _tabIndex(index);
    Get.toNamed(_tabs[index], id: navigatorKey);
  }

  GetPageRoute onGeneratedRoute(RouteSettings settings) {
    if (settings.name == TodoListRouter.routeName) {
      return GetPageRoute(
        page: () => const TodoListPage(),
        binding: TodoListBindings(),
        routeName: TodoListRouter.routeName,
        transition: Transition.noTransition,
      );
    }

    if (settings.name == WeatherRouter.routeName) {
      return GetPageRoute(
        page: () => const WeatherPage(),
        binding: WeatherBindings(),
        routeName: WeatherRouter.routeName,
        transition: Transition.noTransition,
      );
    }

    if (settings.name == ProductsListRouter.routeName) {
      return GetPageRoute(
        page: () => const ProductsListPage(),
        binding: ProductsListBindings(),
        routeName: ProductsListRouter.routeName,
        transition: Transition.noTransition,
      );
    }

    if (settings.name == SettingsRouter.routeName) {
      return GetPageRoute(
        page: () => const SettingsPage(),
        binding: SettingsBindings(),
        routeName: SettingsRouter.routeName,
        transition: Transition.noTransition,
      );
    }

    return GetPageRoute(page: () => Container());
  }
}
